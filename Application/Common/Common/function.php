<?php
function get_theme($ID){
	return M('Place')->where('id='.$ID)->getField('theme');
}

function check_login(){
	if(!isset($_SESSION[C("USER_AUTH_KEY")])) {
		redirect("/admin.php/Index/",2,"你还没登录或登录信息已过期，请重新登录");
	}
}

function check_permittion($MODEL){
	$loginname = session('user_name');
	$user_id = M('User')->where('loginname='."'".$loginname."'")->getField('user_id');
	$permittion = intval(M('Permitssion')->where('user_id='.$user_id)->getField($MODEL.'_PERMIT'));
	if(!$permittion){
		redirect($_SERVER["HTTP_REFERER"],2,"你没有该模块的权限");
	}
}

function update_permitssion($loginname){
	$user_id = M('User')->where('loginname='."'".$loginname."'")->getField('user_id');
	$PERMITSSION = M('Permitssion')->where('user_id='.$user_id)->select();
	session('Info_PERMIT', $PERMITSSION[0]['Info_PERMIT']);
	session('Rooms_PERMIT', $PERMITSSION[0]['Rooms_PERMIT']);
	session('Resturant_PERMIT', $PERMITSSION[0]['Resturant_PERMIT']);
	session('Photos_PERMIT', $PERMITSSION[0]['Photos_PERMIT']);
	session('Theme_PERMIT', $PERMITSSION[0]['Theme_PERMIT']);
	session('User_PERMIT', $PERMITSSION[0]['User_PERMIT']);
	session('LoginHistory_PERMIT', $PERMITSSION[0]['LoginHistory_PERMIT']);
	session('BackUp_PERMIT', $PERMITSSION[0]['BackUp_PERMIT']);
	session('ChartAnalyse_PERMIT', $PERMITSSION[0]['ChartAnalyse_PERMIT']);
	session('News_PERMIT', $PERMITSSION[0]['News_PERMIT']);
	session('Activity_PERMIT', $PERMITSSION[0]['Activity_PERMIT']);
	session('Contact_PERMIT', $PERMITSSION[0]['Contact_PERMIT']);
}

function check_project_selected(){
	return (!session('?CURRENT_PROJECT') || session('CURRENT_PROJECT')==0);
}
function get_usertype($type){
	switch ($type) {
		case 'ADMIN':
			return 0;
		case 'STORE':
			return 1;
		default:
			return 2;
	}
}