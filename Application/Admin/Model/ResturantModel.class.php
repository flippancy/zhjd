<?php
namespace Admin\Model;
use Think\Model;
class ResturantModel extends Model {
	protected $patchValidate = true;
	
	protected $_validate = array(
        array('res_name', 'require', '名字必须填写！', 1),//1为必须验证
        array('res_introduction', 'require', '简介必须填写！', 1),//1为必须验证
    );

    public function index(){
    	$this->show("123");
    }

    public function getData($Pid){
        $data = $this->where('place_id='.$Pid)->getField(implode(",",$this->getDbFields()));
        return $data;
    }

    public function insertData($data){
        if($this->create($data)) {
            return $this->data($data)->add();
        }
        return -1;
    }

    public function updateData($place,$data){
        $i = 0;
    	$len = count($this->getDbFields())-2;
    	$ischange = 0;
    	foreach ($data as $key => $value) {
            $newkey = preg_replace('|[0-9/]+|','',$key);
            $newid = substr($key, strlen($newkey));
			$newdata[$newkey] = $value;
            if(++$i%$len == 0){
	            if ($this->create($newdata)) {
	                if ($this->where('place_id='.$place.' AND res_id='.$newid)->data($newdata)->save()) {
	                	unset($newdata);
	                	$ischange = 1;
	                }
	            } else {
	                // 字段验证错误
	                return $this->getError();
	            }
	        }
        }
        return $ischange == 1;
    }

    public function deleteData($place,$key){
        return $this->where('place_id='.$place.' AND res_id='.$key)->delete();
    }
}