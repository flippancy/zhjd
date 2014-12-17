<?php
namespace Admin\Controller;
use Think\Controller;
class LoginHistoryController extends Controller {
    public function index(){
    	check_login();
        $User = M('User');
        check_permittion('User');
        $data = $User->field('user_id,username,usertype,loginname,lastlogin,lastip')->order('lastlogin desc')->select();
        $this->assign('user_arr',$data);
        $this->assign('MODELID','LoginHistory');
        $this->display();
    }

}