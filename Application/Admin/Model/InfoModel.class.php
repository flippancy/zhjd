<?php
namespace Admin\Model;
use Think\Model;
class InfoModel extends Model {
	protected $patchValidate = true;
	
	protected $_validate = array(
        array('ticket', 'require', '门票必须填写！', 1),//1为必须验证
        array('information', 'require', '基本信息必须填写！', 1),//1为必须验证
        array('introduction', 'require', '简介必须填写！', 1),//1为必须验证
        array('location', 'require', '位置必须填写！', 1),//1为必须验证
    );

    public function index(){
    	$this->show('123');
    }

    public function getData($Pid){
        $data = $this->where('place_id='.$Pid)->getField(implode(",",$this->getDbFields()));
        return $data;
    }

    public function updateData($place,$data){
        foreach($data as $key => $value) {
            $value = nl2br($value);
        }
        if ($this->create()) {
            return ($this->where('place_id='.$place)->data($data)->save());
        } else {
            // 字段验证错误
            return $this->getError();
        }
    }

}