<?php
namespace Admin\Model;
use Think\Model\RelationModel;
class PermitssionModel extends RelationModel {
    protected $_link = array(
        'User'=> self::BELONGS_TO,
    );

    public function index(){
    	$this->show("123");
    }

}