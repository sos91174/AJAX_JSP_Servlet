<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax</title>
<!-- src="js/jquery-3.5.1.js 導入去官網下載 -->
<script type="text/javascript" src="js/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#bttHello').click(function(){
			var fullname = $('#fullname').val();
			$.ajax({
				type:'POST',
				data:{fullname:fullname},
				url:'AjaxController',
				success: function(result){
					$('#result1').html(result);
				}
			})
		});
	});
	
	$(document).ready(function(){
		$('#bttHello2').click(function(){
			var fullname2 = $('#fullname2').val();
			$.ajax({
				type:'POST',
				data:{fullname2:fullname2},
				url:'AjaxController2',
				success: function(result){
					$('#result2').html(result);
				}
			})
		});
	});


</script>
</head>
<body>

<from>
	Name <input type="text" id="fullname">
	<input type="button" value="check" id="bttHello">
	<br>
	<span id="result1"></span>
	
	<br>
	<br>
	
	Name2 <input type="text" id="fullname2">
	<input type="button" value="check" id="bttHello2">
	<br>
	<span id="result2"></span>

</from>

</body>
</html>