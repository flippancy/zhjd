$(document).ready(function(){
	$(".pushData").click(function(){
		var form = $(this).parent().parent().attr('id');
		var action = $("#"+form).attr('action');
		var params = $("#"+form).serialize();
		var errpos = $("#"+form+"_err");
		$.post(
    		action, params,
    		function(data, status) {
    			if(data['info'] == 'success'){
    				data = "修改成功!"
						$(errpos).css("color","green");
    					$(errpos).html(data);
    				setTimeout(function () {
    					location.reload();
    				}, 3000);
    			} else if(data['info'] == 'error'){
    				data = "你没有任何修改";
        			$(errpos).html(data);
    			} else {
        			var error = '';
        			for(x in data) {
        				$("#"+x).parent().addClass("has-error");
        				error += data[x] + '<br>';
        			}
        			$(errpos).html(error);
        		}
    		},
    		"json"
   		 );	//end post
      });
});