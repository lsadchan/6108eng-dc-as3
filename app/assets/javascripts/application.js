// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){
	
	$('#logo').live('click',function(){
		window.location.href = "/welcome";
	})
	
	$('#login-btn').live('click',function(event){
		event.preventDefault();
		event.stopPropagation();
		$('#login-box').toggle();
	});
	
	$('#login-btn-async').live('click',function(event){
		event.preventDefault();
		event.stopPropagation();
		
		var username = $('#username_async').val();
		var password = $('#password_async').val();
		
		$.post("/author_sessions", $("#login_form_async").serialize(), function(data){
			var loginData = $("#success",data).html();
			
			if(loginData != null){
				$('#logo').load('/ #logo').fadeIn('slow');
				$('.nav').load('/ .nav').fadeIn('slow');
				$('#login-box').hide();
			}else{
				alert("ERROR: Login unsuccessfull. Please try again.");
			}
			
		});
	});
	
});
