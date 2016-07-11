$(document).on('turbolinks:load', function() {
	bind_users_click()
});

function bind_users_click(){
  $("#users tr").each(function( index ) {
  	var id = $(this).find("td").first().html();
  	bind_user_click(id);
  });
}

function bind_user_click(id) {
	$("#user_" + id).click(function (e) {
	  $("html, body").animate({ scrollTop: 0 }, 300);
  	$.get('/users/' + id + '/edit.js');
  });
}