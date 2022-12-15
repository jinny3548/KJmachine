<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath == '/' ? '' : pageContext.request.contextPath }" scope="application" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	var sum = "${sumNo}";
	$("#machNo").val(sum);
	console.log($("#machNo").val());
	//var uploadPath = $("#uploadPath").val();
	//var uuid = $("#uuid").val();
	//var fileName = $("#fileName").val();
	
	//var dis = "${contextPath}/display?fileName=" + uploadPath + "/" + uuid + fileName;
	//console.log(dis);
	//$("#display").attr('src', dis);
	
	$("input:radio[name=sumcheck]").click(function(){
		var image = $("input[name=sumcheck]:checked").val();
		$("#sum").val(image);
	});
});
//alert(sum + "번 상품을 등록하였습니다. 대표 이미지를 선택해주세요.");



</script>
</head>
<body>
<h2>sum page</h2>
<c:forEach items="${list }" var="list">
<div>
<img id="display" src="${contextPath}/display?fileName=${list.uploadPath }/${list.uuid }${list.fileName }"  style="width: 500px; height: 500px;">
		<span>${list.machNo }</span>
		<span>${list.uuid }</span>
		<span>${list.fileName }</span>
		<span>${list.uploadPath }</span>
		<input type="hidden" value="${list.uploadPath }" id="uploadPath">
		<input type="hidden" value="${list.uuid }" id="uuid">
		<input type="hidden" value="${list.fileName }" id="fileName">
		<input type="radio" name="sumcheck" value="${list.uploadPath }/${list.uuid }${list.fileName }">
</div>
</c:forEach>
<form action="/sum" method="get" >
	<input type="hidden" id="machNo" name="machNo">
	<input type="hidden" id="sum" name="sum">
	<input type="submit" value="확인" style="border: 1px solid black; ">
</form>
</body>
</html>
