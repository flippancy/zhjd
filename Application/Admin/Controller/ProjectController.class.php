<?php
namespace Admin\Controller;
use Think\Controller;
class ProjectController extends Controller {
    public function index(){
    	check_login();
        $this->show('123');
    }

    public function changeProject(){
    	check_login();
        $ProjectId = I('post.ProjectId');
        session('CURRENT_PROJECT',$ProjectId);
    }

}