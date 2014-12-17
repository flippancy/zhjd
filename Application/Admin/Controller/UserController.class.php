<?php
namespace Admin\Controller;
use Think\Controller;
class UserController extends Controller {
    public function index(){
        $User = M('User');
        check_permittion('User');
        $data = $User->field('user_id,username,password,loginname,usertype,lastlogin')->select();
        $this->assign('delete_tip','确认删除该用户?');
        $this->assign('user_arr',$data);
        $this->assign('MODELID','User');
        $this->display();
    }

    public function addUser(){
        check_login();
        if(IS_POST){
	    	$User = D('User');
	    	$data['username'] = I('post.username');
	    	$data['loginname'] = I('post.loginname');
	    	$data['password'] = md5(I('post.password'));
	    	$data['usertype'] = I('post.usertype');
            $data['usertype'] = get_usertype($data['usertype']);
	    	$flag = $User->addUser($data);
    		if($flag==1){
    			$this->success('添加成功');
    		} else if($flag==0){
    			$this->error('添加失败');
    		}else{
    			$this->show($flag);
    		}
	    }
        $this->display();
    }

    public function editUser(){
        check_login();
        $User = M('User');
        $user_id = I('get.id');
        $usertype = $User->where('user_id='.$user_id)->getField('usertype');
        $username = $User->where('user_id='.$user_id)->getField('username');
        $user_permitssion = M("Permitssion")->where('user_id='.$user_id)->field('*')->select();
        if(IS_POST){
            $User = D('User');
            $data = I('post.');
            if($User->editUser($user_id,$data)){
               $this->success('写入成功');
            }else{
                $this->error('写入失败');
            }
        }
        $this->assign('uspmt',$user_permitssion[0]);
        $this->assign('username',$username);
        $this->assign('usertype',$usertype);
        $this->assign('user_id',$user_id);
        $this->display();
    }

    public function deleteUser(){
        $User = D('User');
        check_login();
        $user_id = I('get.id');
        if($User->relation(true)->delete($user_id)){
            $this->success('删除成功');
        } else{
            $this->error('删除失败');
        }
    }
}