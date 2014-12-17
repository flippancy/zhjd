function setCover()
{
	this.id = 0;
}
setCover.setId = function(id){
	setCover.id = id;
};
setCover.setCover = function(key){
	document.getElementById("room_cover"+this.id).value = $("#coverImg"+key).attr("src");
	$('#coverModal').modal('hide');
}