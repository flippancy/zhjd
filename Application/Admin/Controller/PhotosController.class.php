<?php
namespace Admin\Controller;
use Think\Controller;
class PhotosController extends Controller {
    public function index(){
        check_login();
        check_permittion('Photos');
        $Pid = session('CURRENT_PROJECT');
    	$Photos = D("Photos");
        $img_cover = $Photos->getCover($Pid);
        $img_data = $Photos->getData($Pid);
        $this->assign('place',$Pid);
        $this->assign('img_cover',$img_cover);
        $this->assign('img_arr',$img_data);
        $this->assign('img_count',count($img_data));
        $this->assign('MODELID','Photos');
    	$this->display();
    }

    public function delete() {
        check_login();
        if(check_project_selected()) $this->error(C('PROJECT_SELECT_TIP'));
        $place = $_GET['place'];
        $key = $_GET['key'];
        if(IS_POST){
            if(!$OP = D('Photos') ){
                $this->error('不存在该数据表');
            }
            
            if($OP->deleteData($place,$key)) {
                $this->success('删除成功');
            } else {
                $this->error('删除失败');
            }
        }
    }

    public function upload() {
        check_login();
        if(check_project_selected()) $this->error(C('PROJECT_SELECT_TIP'));
        $place = $_GET['place'];
        $upload = new \Think\Upload();
        $upload->maxSize = 3145728 ;
        $upload->exts = array('jpg', 'gif', 'png', 'jpeg');
        $upload->rootPath = './Uploads/';
        $upload->savePath = '';
        if(IS_POST){
            $info = $upload->upload();
            if(!$info) {
                $this->error($upload->getErrorMsg());
            }else{
                $Photos = M("Photos");
                if($Photos){
                    foreach($info as $file) {
                        $data['img_url'] = $file['savepath'].$file['savename'];
                        $data['img_title'] = I("post.img_title")==null?"unname":I("post.img_title");
                        if($_POST['img_cover']=='1') {
                            if($cover = $Photos->where('place='.$place.' AND img_cover=1')){
                                $cdata['img_cover'] = null;
                                $cover->save($cdata);
                            }
                            $data['img_cover'] =1;
                        }
                        $data['place'] = $place;
                        if($Photos->data($data)->add()) {
                            $this->success("上传成功!");
                        } else {
                            $this->error("写入失败!");
                        }
                    }
                } else {
                    $this->error($upload->getError());
                }
            }
        }
    }
}