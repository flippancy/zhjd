<?php
namespace Admin\Model;
use Think\Model\RelationModel;
class UserModel extends RelationModel {
	protected $_validate = array(
		array('loginname','','账户名已经存在',0,'unique',1),
    );
    
    protected $_auto = array (
		array('password','md5',3,'function'),
	);

    protected $_link = array(
        'Permitssion'=> self::HAS_ONE,
    );

    public function index(){
    	$this->show("123");
    }

    public function addUser($data){
        if($this->create($data)){
            if(!$this->data($data)->add()){
                return -1;
            }else{
                if($data['usertype']==0){
                    $supmt = C('SUPERUSER_PERMITSSION');
                }if($data['usertype']==1){
                    $supmt = C('STORE_PERMITSSION');
                }
                $Permitssion = M('Permitssion');
                $supmt['user_id'] = $this->where('loginname='."'".$data['loginname']."'")->getField('user_id');
                if(!$Permitssion->data($supmt)->add()){
                    return -1;
                }
            }
    	} else{
    		return $this->getError();
    	}
    	return 1;
    }

    public function editUser($UID,$data){
        if($data['permitssion']){
            if(!$this->editPermitssion($UID,$data['permitssion'])){
                return false;
            }
        }
        if($username = $data['username']){ 
            $newdata['username'] = $username;
        } if($usertype = $data['usertype']){
            $newdata['usertype'] = get_usertype($usertype);
        } if($data['oldpassword'] && $data['newpassword']){
            $map['user_id'] = $UID;
            $map['password'] = md5($data['oldpassword']);
            if($this->where($map)->select()){
                $newdata['password'] = md5($data['newpassword']);
            }
        }
        if($this->create($newdata)){
            if(!$this->where('user_id='.$UID)->data($newdata)->save()){
                return false;
            }
        }else{
            return $this->getError();
        }
        return true;
    }

    public function editPermitssion($UID,$data){
        $Permitssion = M('Permitssion');
        foreach ($data as $key => $value) {
           $newdata[$value.'_PERMIT'] = 1;
        }
        $TO_ZERO = C('PERMITSSION_TO_ZERO');
        $Permitssion->where('user_id='.$UID)->save($TO_ZERO);
        if(!$Permitssion->where('user_id='.$UID)->save($newdata)){
            return false;
        }
        return true;
    }

}