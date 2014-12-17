<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index() {
        $ID = $_GET['pid'];
        $Place = M('Place');
        $THEME = $Place->where('id='.$ID)->getField('theme');
        $PLACE_NAME = $Place->where('id='.$ID)->getField('name');
        $img_cover = M("Photos")->where('place_id='.$ID.' AND img_cover=1')->select();
        $this->assign('img_cover',$img_cover[0]['img_url']);
        $this->assign('pid',$ID);
        $this->assign('place_name',$PLACE_NAME);
	    $this->theme($THEME)->display();
    }

    public function info() {
        $Pid = $_GET['place'];
        $Place = D('Place');
        $info = $Place->relation('Info')->find($Pid);
        $info_data = $info['Info'];
        $this->assign('name',$info['name']);
        $this->assign('information',nl2br($info_data['information']));
        $this->assign('ticket',nl2br($info_data['ticket']));
        $this->assign('introduction',$info_data['introduction']);
        $this->assign('location',nl2br($info_data['location']));
        $this->assign('more',nl2br($info_data['more']));
        $THEME = get_theme($Pid);
        $this->theme($THEME)->display();
    }

    public function photos() {
        $Pid = $_GET['place'];
        $Place = D("Place");
        $images = $Place->relation('Photos')->find($Pid);
        $this->assign('img_arr',$images['Photos']);
        $this->assign('name',$images['name']);
        $THEME = get_theme($Pid);
        $this->theme($THEME)->display();
    }

    public function room() {
        $Pid = $_GET['place'];
        $Place = D("Place");
        $rooms = $Place->relation('Rooms')->find($Pid);
        $room_data = $rooms['Rooms'];
        $this->assign('room_arr',$room_data);
        $this->assign('room_count',count($room_data));
        $this->assign('pid',$Pid);
        $this->assign('name',$rooms['name']);
        $THEME = get_theme($Pid);
        $this->theme($THEME)->display();
    }

    public function room_info() {
        $Pid = $_GET['place'];
        $RoomId = $_GET['roomid'];
        $Place = D("Place");
        $rooms = $Place->relation('Rooms')->find($Pid);
        $room_data = $rooms['Rooms'][$RoomId];
        preg_match_all('/:(.*?)\s/', $room_data['room_detail'], $room_detail);
        $this->assign('room_name',$room_data['room_name']);
        $this->assign('room_price',$room_data['room_price']);
        $this->assign('room_more',$room_data['room_more']);
        $this->assign('room_cover',$room_data['room_cover']);
        $this->assign('room_detail',$room_detail[0]);
        $this->assign('name',$rooms['name']);
        $THEME = get_theme($Pid);
        $this->theme($THEME)->display();
    }

    public function resturant() {
        $Pid = $_GET['place'];
        $Place = D("Place");
        $resturant = $Place->relation('Resturant')->find($Pid);
        $res_data = $resturant['Resturant'];
        $this->assign('res_arr',$res_data);
        $this->assign('pid',$Pid);
        $this->assign('res_count',count($res_data));
        $this->assign('name',$resturant['name']);
        $THEME = get_theme($Pid);
        $this->theme($THEME)->display();
    }

    public function resturant_info() {
        $Pid = $_GET['place'];
        $ResId = $_GET['resid'];
        $Place = D("Place");
        $resturant = $Place->relation('Resturant')->find($Pid);
        $res_data = $resturant['Resturant'][$ResId];
        $this->assign('res_name',$res_data['res_name']);
        $this->assign('res_more',$res_data['res_introduction']);
        $this->assign('res_time',$res_data['res_time']);
        $this->assign('res_location',$res_data['res_location']);
        $this->assign('res_feature',$res_data['res_feature']);
        $this->assign('res_notice',$res_data['res_notice']);
        $this->assign('name',$resturant['name']);
        $THEME = get_theme($Pid);
        $this->theme($THEME)->display();
    }

    public function news() {
    	$Pid = $_GET['place'];
    	$url= C('NEWS');
		redirect($url[$Pid]);
        // $this->theme($_GET['site'])->display();
    }


    public function location() {
        $Pid = $_GET['place'];
        $LOCATION = C("LOCATION");
        $point = $LOCATION[$Pid];
        $this->assign('point',$point);
        $THEME = get_theme($Pid);
        $this->theme($THEME)->display();
    }
}