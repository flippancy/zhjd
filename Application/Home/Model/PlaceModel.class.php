<?php
namespace Home\Model;
use Think\Model;
class PlaceModel extends RelationModel {
    protected $_link =  array(  //关联保存的规则：
        'Info'   =>  HAS_ONE,        //HAS_ONE 关联数据的更新直接赋值
        'Photos'      =>  HAS_MANY,     //关联数据的更新直接赋
        'Rooms'      =>  HAS_MANY,       //HAS_MANY 的关联数据如果传入主键的值 则表示更新 否则就表示新增
        'Resturant'    =>  HAS_MANY,   //更新是删除之前的数据后重新写入
        'News'    =>  HAS_MANY,
    );
}