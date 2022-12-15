<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<html>
<head>
	<title>Home</title>
</head>
<script type="text/javascript">

	$(document).ready(function(){
		
		alert("안녕");
		var str = "";
		str = "<h2>" + 안녕 + "</h2>";
		$(".ui").append(str);
		
	});
</script>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<div class="ui" id="ui">
	
</div>
</body>
</html>
