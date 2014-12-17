<?php
namespace Admin\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
        $this->redirect('Index/login');
    }

    public function login(){
        if(IS_POST) {
            $User = M("User");
            $map['loginname'] = I("post.username");
            $map['password'] = md5(I("post.password"));
            if($User->where($map)->select()) {
                $_SESSION[C("USER_AUTH_KEY")] = $map['loginname'];
                session('user_name',$map['loginname']);
                session('CURRENT_PROJECT',0);
                $data['lastlogin'] = date('Y-m-d H:i:s');
                $data['lastip'] = get_client_ip();
                $User->where($map)->data($data)->save();
                update_permitssion($map['loginname']);
                $this->redirect("Info/index");
            } else {
                $this->error("登录失败!");
            }
        }
        $this->display();
    }

    public function logout(){
        if (isset($_SESSION[C("USER_AUTH_KEY")])) {
            unset($_SESSION[C("USER_AUTH_KEY")]);
            $this->success("成功退出！",'Index/login');
        }else {
            $this->error("已经注销登录！",'Index/login');
        }
    }
    
}