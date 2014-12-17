<?php
namespace Admin\Model;
use Think\Model;
class PhotosModel extends Model {
	protected $patchValidate = true;
	
	protected $_validate = array(
    );

    public function index(){
    	$this->show("123");
    }

    public function getData($Pid){
        $data = $this->where('place_id='.$Pid)->getField(implode(",",$this->getDbFields()));
        return $data;
    }

    public function getCover($Pid){
    	$data = $this->where('place_id='.$Pid.' AND img_cover=1')->getField('img_url');
    	return $data;
    }

    public function deleteData($place,$key){
        unlink('./Uploads/'.$this->where('place='.$place.' AND img_id='.$key)->getField('img_url'));
        return $this->where('place_id='.$place.' AND img_id='.$key)->delete();
    }
}