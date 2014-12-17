<?php
namespace Admin\Controller;
use Think\Controller;
class RoomsController extends Controller {
    public function index(){
        check_login();
        check_permittion('Rooms');
    	$Pid = session('CURRENT_PROJECT');
    	$Rooms = D("Rooms");
        $room_data = $Rooms->getData($Pid);
        $this->assign('place',$Pid);
        $this->assign('room_arr',$room_data);
        $this->assign('MODELID','Rooms');
        $this->display();
    }

    public function insert() {
        check_login();
        if(check_project_selected()) $this->error(C('PROJECT_SELECT_TIP'));
        $place = $_GET['place'];
        if(IS_POST){
            if(!$OP = D('Rooms') ){
                $this->error('不存在该数据表');
            } else{
            	$data = I("post.");
            	$data['place'] = $place;
            	if($OP->insertData($data)) {
        			$this->success("添加成功!");
        		} else {
        			$this->error("添加失败");
        		}
            }
        }
    }

    public function update() {
        check_login();
        if(check_project_selected()) $this->error(C('PROJECT_SELECT_TIP'));
        $place = $_GET['place'];
        if(IS_POST){
            if(!$OP = D('Rooms') ){
                $this->error('不存在该数据表');
            }
            $data = I('post.');
            $flag = $OP->updateData($place,$data);
            if($flag==1) {
                $this->success('success');
            } else if($flag==0){
                $this->error('error');
            } else{
                $this->ajaxReturn($flag,'json');
            }
        }
    }

    public function delete() {
        check_login();
        if(check_project_selected()) $this->error(C('PROJECT_SELECT_TIP'));
        $place = $_GET['place'];
        $key = $_GET['key'];
        if(IS_POST){
            if(!$OP = D('Rooms') ){
                $this->error('不存在该数据表');
            }
            
            if($OP->deleteData($place,$key)) {
                $this->success('删除成功');
            } else {
                $this->error('删除失败');
            }
        }
    }
    
}