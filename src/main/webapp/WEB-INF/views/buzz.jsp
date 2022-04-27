<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
<script src="http://code.jquery.com/jquery-3.1.0.min.js"></script>
<script type="text/javascript">
$( document ).ready( function()
		{
		  $( '.buzz' ).each( function()
		  {
		    $( this ).attr( 'data-buzz' , $( this ).text() );
		  } );
		} );
</script>
</head>
<body>
	
	<div class="buzztext">
  		<a class="buzz">TYRANNO</a>
	</div>
	
</body>
</html>