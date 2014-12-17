<?php
namespace Home\Model;
use Think\Model;
class UserModel extends Model {
    public function index(){
    	$this->show('hello');
    }
}