<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#youimg").show(1000,function(){
		$("#comimg").show(1000,function(){
			$("#result").show(1000).animate({height:"0px"},1000).fadeOut(1000,function(){				
				$("table").hide(1000,function(){
					history.back();
				});
			});	
		});
	});
});
</script>


</head>
<body align="center">
<div id="result" class="well" style="display:none;">
<h1>${result}</h1>
</div>

<div class="table">
<table class="table table-bordered">
<tbody>
<tr>
	<td><h2>당신: ${you}</h2></td>
	<td rowspan="2"><h1>VS</h1></td>
	<td><h2>컴퓨터: ${com}</h2></td>
</tr>
<tr>
	<td><img src="${youimg}" id="youimg" class="img-rounded"></img></td>
	<td><img src="${comimg}" id="comimg" class="img-rounded"></img></td>
</tr>
</tbody>

</table>
</div>

</body>
</html>