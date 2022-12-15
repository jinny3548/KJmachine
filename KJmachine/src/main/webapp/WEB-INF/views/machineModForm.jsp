<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="javax.servlet.descriptor.TaglibDescriptor"%>
<%@ page import="com.google.gson.Gson"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 수정</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		 var category = document.getElementById('categoryNo').value;
		$("#category").val(category).prop("selected", true);
		
		var name = $("#machineImg").val();
		var no = $("#machNo").val();
		var sr = 'images/machine/' + no + '/' + name;
		$("#preview").attr('src', sr);
		
	});
	
	function cancel(){
		location.href = "/KJmachine";
	}
	
	function readURL(input){
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e){
				$("#preview").attr("src", e.target.result);
			}
			reader.readAsDataURL(input.files[0]); //파일을 화면단에 보여주기만 하는
		}
	}
	
 
</script>
</head>
<body>
 <div align="center">
	<h2>상품수정</h2>
	<form action="/machineMod" method="get" name="frm3">
			<table align="center">
				<tr>
					<td width="150" align="center" bgcolor="lightblue">상품카테고리:</td>
					<td colspan="2" >
						<select id="category" name="categoryNo" required="required">
							<option value="0">선택없음</option>
							<option id="cnc" value="1">CNC</option>
							<option id="mct" value="2" >머시닝센터</option>
						</select>
					</td>
				</tr>
				<input type="hidden" value="${modView.categoryNo }" id="categoryNo" >
				<tr>
					<td width="100" align="center" bgcolor="lightblue">기계 번호:</td>
					<td colspan="2" ><input type="text" readonly="readonly" name="machNo" value="${modView.machNo }" id="machNo"></td>
				</tr>
				<tr>
					<td width="100" align="center" bgcolor="lightblue">기계 이름:</td>
					<td colspan="2" ><input type="text" name="mach_name" value="${modView.mach_name }"></td>
				</tr>
				<tr>
					<td width="100" align="center" bgcolor="lightblue">가격:</td>
					<td colspan="2" ><input type="text" name="price" value="${modView.price }"></td>
				</tr>
				<tr>
					<td width="100" align="center" bgcolor="lightblue">기계 상태:</td>
					<td colspan="2" ><input type="text" name="condit" value="${modView.condit }"></td>
				</tr>
				<tr>
					<td width="100" align="center" bgcolor="lightblue">상세내용:</td>
					<td colspan="2" ><input type="text" name="content" value="${modView.content }"></td>
				</tr>
				<tr>
					<td width="100" align="center" bgcolor="lightblue">상품 사양:</td>
					<td colspan="2" ><input type="text" name="specification" value="${modView.specification }"></td>
				</tr>
				<tr>
					<td width="100" align="center" bgcolor="lightblue">지역:</td>
					<td colspan="2" ><input type="text" name="located" value="${modView.located }"></td>
				</tr>
				<tr>
					<td width="100" align="center" bgcolor="lightblue">거래가능지역:</td>
					<td colspan="2" ><input type="text" name="dealArea" value="${modView.dealArea }"></td>
				</tr>
				<tr>
					<td width="100" align="center" bgcolor="lightblue">인도조건:</td>
					<td colspan="2" ><input type="text" name="delivery" value="${modView.delivery }"></td>
				</tr>
				<tr>
					<td width="100" align="center" bgcolor="lightblue">제조사:</td>
					<td colspan="2" ><input type="text" name="manufacture" value="${modView.manufacture }"></td>
				</tr>
				<tr>
					<td width="100" align="center" bgcolor="lightblue">이미지파일:</td>
				<td>
					<input type="file" name="image" onchange="readURL(this)" value="${modView.image }">
				</td>
					<input type="hidden" value="${modView.image }" id="machineImg">
				<td><img alt="이미지 미리보기" src="#" id="preview" width="200" height="200" ></td>
				<%-- 	<td> <input type="file" name="image">
					<img alt="" src="" id="image" style="width: 200px;">  </td> --%>
				</tr>
				<tr>
					<td width="100" align="center" bgcolor="lightblue">제조날짜:</td>
					<td colspan="2" ><input type="text" name="mfg" value="${modView.mfg }"></td>
				</tr>
				<tr>
					<td width="100" align="center" bgcolor="lightblue">상품 등록일:</td>
					<td colspan="2" ><input type="text" disabled="disabled" name="rgsDate" value="${modView.rgsDate }"></td>
				</tr>
				<tr>
					<td><input type="submit" value="수정하기"  name="submit"></td>
					<td colspan="2" ><input type="button" value="취소" onclick="cancel()">  </td>
				</tr>
			</table>
	</form>
	</div> 
</body>
</html>