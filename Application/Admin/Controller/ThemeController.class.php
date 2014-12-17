<?php
namespace Admin\Controller;
use Think\Controller;
class ThemeController extends Controller {
    public function index(){
        check_login();
        check_permittion('Theme');
        $place_theme = M('Name')->where('id='.$Pid)->getField('Theme');
        $this->assign('place_theme',$place_theme);
        $this->assign('MODELID','Theme');
        $this->display();
    }

    public function chooseTheme(){
        check_login();
        if(check_project_selected()) $this->error(C('PROJECT_SELECT_TIP'));
        $id = session('CURRENT_PROJECT');
        $data['theme'] = I('post.themeOption');
        if(M('Name')->where('id='.$id)->save($data)){
            $this->success('修改成功');
        } else {
        	$this->error('你没有任何修改');
        }
    }
}