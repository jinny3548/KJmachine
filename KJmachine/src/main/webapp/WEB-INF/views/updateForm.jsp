<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./includes/header.jsp" %>
<script type="text/javascript">

function deleteMac(machNo) {
	var yes = confirm("삭제 하시겠습니까?");
	if (yes == true) {
		location.href= "/delete?machNo=" + machNo;
	}else {
		location.href= "/updateForm?machNo=" + machNo;
	}
}

 $(document).ready(function() {
	  
	 $("#back").click(function(){
			location.href = "/KJmachine";
		});
	 
	  var cate = $("#cate").val();
		console.log(cate);
		$("#category").val(cate).prop("selected", true);
		
	var sum = "";
	 sum = $("#sum").val();
	 var change = sum.replace(/\\/gi, "/");
		console.log(change);
		$("input[id='" + change + "']").prop("checked", true);

		
	var formObj = $("form[role='form']");
	
	$("button[type='submit']").on("click", function(e){
		e.preventDefault();
		    
		console.log("submit clicked");
		var str = "";
		    
	 	$(".uploadResult ul li").each(function(i, obj){
			var jobj = $(obj);
		      
			console.dir(jobj);
			console.log("-------------------------");
			console.log(jobj.data("filename"));
		      
			str += "<input type='hidden' name='attachList["+i+"].fileName' value='"+jobj.data("filename")+"'>";
			str += "<input type='hidden' name='attachList["+i+"].uuid' value='"+jobj.data("uuid")+"'>";
			str += "<input type='hidden' name='attachList["+i+"].uploadPath' value='"+jobj.data("path")+"'>";
			str += "<input type='hidden' name='attachList["+i+"].filetype' value='"+ jobj.data("type")+"'>";
		}); 
	 	
		console.log(str);
		formObj.append(str).submit();
	});
	
	var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
	var maxSize = 5242880; //5MB
		  
	function checkExtension(fileName, fileSize) {
		if(fileSize >= maxSize) {
			alert("파일 사이즈 초과");
			return false;
		}
		    
		if(regex.test(fileName)) {
			alert("해당 종류의 파일은 업로드할 수 없습니다.");
			return false;
		}
		
		return true;
	}
	
	$("input[type='file']").change(function(e){

		var formData = new FormData();
		    
		var inputFile = $("input[name='uploadFile']");
		var files = inputFile[0].files;
		for(var i = 0; i < files.length; i++){
			console.log(files[i]);
			if(!checkExtension(files[i].name, files[i].size) ){
				return false;
			}
			formData.append("uploadFile", files[i]);
		}
		 var upload = $("#upload");
		$.ajax({
			url: "${contextPath}/uploadAjaxAction",
			processData: false, 
			contentType: false,
			data: formData,
			type: "POST",
			dataType:"json",
			success: function(result){
				console.log("uploadAjaxAction ==== " + result); 
				for (var i = 0; i < result.length; i++) {
					var file = encodeURIComponent(result[i].uploadPath+ "/" + result[i].uuid + "_" + result[i].fileName);
					//str = "<input type='radio' id='sum' name='sum' value='" + file +"'>";
				}
				showUploadResult(result); 
			}
		}); //$.ajax
	});  

	function showUploadResult(uploadResultArr) {
		    
	    if(!uploadResultArr || uploadResultArr.length == 0) { 
	    	return;
	    }
		    
	    var uploadUL = $(".uploadResult ul");
	    var str ="";
		    
	    $(uploadResultArr).each(function(i, obj) {
			if(obj.image){
				var fileCallPath = encodeURIComponent(obj.uploadPath+ "/s_" + obj.uuid + "_" + obj.fileName);
				var file = encodeURIComponent(obj.uploadPath+ "/" + obj.uuid + "_" + obj.fileName);
				str += "<li data-path='" + obj.uploadPath + "'";
				str +=" data-uuid='" + obj.uuid + "' data-filename='" + obj.fileName + "' data-type='" + obj.image + "'"
				str +" ><div>";
				str += "<span> " + obj.fileName + "</span>";
				str += "<button type='button' data-file=\'" + fileCallPath + "\' "
				str += "data-type='image' class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
				str += "<img src='${contextPath}/display?fileName=" + fileCallPath + "'>";
				str += "<input type='radio' id='" + file + "' class='sum2' name='sum2' value='" + file +"'></div>";
				str +"</li>";
			} else {
				var fileCallPath = encodeURIComponent(obj.uploadPath + "/" + obj.uuid + "_" + obj.fileName);			      
			    var fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");
				      
				str += "<li "
				str += "data-path='" + obj.uploadPath + "' data-uuid='" + obj.uuid + "' data-filename='" + obj.fileName + "' data-type='" + obj.image + "' ><div>";
				str += "<span> " + obj.fileName + "</span>";
				str += "<button type='button' data-file=\'" + fileCallPath + "\' data-type='file' " 
				str += "class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
				str += "<img src='${contextPath}/resources/img/attach.png'></a>";
				str += "</div>";
				str +"</li>";
			}
		});
		uploadUL.append(str);
	}

	$(".uploadResult").on("click", "button", function(e) {
		    
		console.log("delete file");
		      
		var targetFile = $(this).data("file");
		var uuid = $(this).data("uuid");
		var type = $(this).data("type");
		var targetLi = $(this).closest("li");
		    
		$.ajax({
			url: "${contextPath}/deleteFile",
			data: {fileName: targetFile, type:type},
			dataType:"text",
			type: "POST",
			success: function(result){
				alert(result);
		           
				targetLi.remove();
			}
		}); //$.ajax
	});
	
/* 	$("input[name='sum']").click(function(){
		var sumval = $("input[name='sum']:checked").val();
		console.log(sumval);		
	}); */
	
	$(document).on('change','.sum2',function(e){
		var sum = $(this).val();
		$("#sum").val(sum);
	}) 
	
	$(".upload").on("click", "button", function(e) {
	    
		console.log("update file");
		      
		var targetFile = $(this).data("file");
		var uuid = $(this).data("uuid");
		var type = $(this).data("type");
		var targetLi = $(this).closest("li");
		    
		$.ajax({
			url: "${contextPath}/sumdeleteFile",
			data: {fileName: targetFile, type:type, uuid: uuid},
			dataType:"text",
			type: "POST",
			success: function(result){
				alert(result);
		           
				targetLi.remove();
			}
		}); //$.ajax
	});

}); 
</script>
	<section class="u-align-center u-clearfix u-palette-2-base u-section-1"
		id="carousel_e9f6">
		<div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
			<br> <br>
			<h2
				class="u-custom-font u-font-montserrat u-text u-text-default u-text-1">
				상품 등록</h2>
			<div style="width: 90%;"
				class="u-align-center-sm u-align-center-xs u-align-left-lg u-align-left-md u-align-left-xl u-container-style u-group u-radius-20 u-shape-round u-white u-group-1">
				<div style="width: 90%;"
					class="u-container-layout u-valign-middle-lg u-valign-middle-md u-valign-middle-sm u-valign-middle-xl u-container-layout-1">
					<div class="u-form u-form-1" style="width: 90%;">
					<img alt="" src="resources/img/back.png" style="width: 50px; height: 50px; margin-bottom: 10px;" id="back">
						<form action="/update" method="post" role="form" enctype="multipart/form-data" >
							<input type="hidden" name="sum" id="sum" value="${updateView.sum }">
							<input type="hidden" name="machNo" id="machNo" value="${updateView.machNo }">
							<input type="hidden" value="${updateView.cateNo }" id="cate" >
							<div class="u-form-group u-form-phone u-form-group-1">
								<label class="u-label">상품카테고리</label> <select name="cateNo"
									id="category" required="required"
									class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">
									<option value="0"
										class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">선택없음</option>
									<option id="cnc" value="1"
										class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">CNC</option>
									<option id="mct" value="2"
										class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">머시닝센터</option>
								</select>
							</div>
							<div class="u-form-group u-form-phone u-form-group-1">
								<label class="u-label">상품이름</label> <input type="text" value="${updateView.mach_name }"
									name="mach_name"
									class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">
							</div>
							<div class="u-form-group u-form-phone u-form-group-1">
								<label class="u-label">상품상태</label> <input type="text" value="${updateView.condit }"
									name="condit"
									class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">
							</div>
							<div class="u-form-group u-form-phone u-form-group-1">
								<label class="u-label">제조사</label> <input type="text" value="${updateView.manufacture }"
									name="manufacture"
									class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">
							</div>
							<div class="u-form-group u-form-phone u-form-group-1">
								<label class="u-label">제조년월</label> <input type="text" value="${updateView.mfg }"
									name="mfg"
									class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">
							</div>
							<div class="u-form-group u-form-phone u-form-group-1">
								<label class="u-label">상품위치</label> <input type="text" value="${updateView.located }"
									name="located"
									class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">
							</div>
							<div class="u-form-group u-form-phone u-form-group-1">
								<label class="u-label">상품사양</label> <input type="text" value="${updateView.specification }"
									name="specification"
									class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">
							</div>
							<div class="u-form-group u-form-message">
								<label class="u-label">상품 내용</label>
								<textarea rows="4" cols="50" name="content"
									class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">${updateView.content }</textarea>
							</div>
							<div class="u-form-group u-form-phone u-form-group-1">
								<label class="u-label">상품가격</label> <input type="text" value="${updateView.price }"
									name="price"
									class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">
							</div>
							<div class="u-form-group u-form-phone u-form-group-1">
								<label class="u-label">거래가능지역</label> <input type="text" value="${updateView.dealArea }"
									name="dealArea"
									class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">
							</div>
							<div class="u-form-group u-form-phone u-form-group-1">
								<label class="u-label">인도조건</label> <input type="text" value="${updateView.delivery }"
									name="delivery"
									class="u-border-1 u-border-grey-10 u-grey-10 u-input u-input-rectangle u-radius-20">
							</div>
							<div class="u-align-left u-form-group u-form-submit" >
								<button type="submit" style="width:47%; margin: 1%;"
									class="u-border-none u-btn u-btn-round u-btn-submit u-button-style u-custom-font u-font-montserrat u-palette-2-base u-radius-20 u-btn-2">확인</button>
								<input type="button" onclick="deleteMac(${updateView.machNo});" value="삭제" style="width: 47%; margin: 1%;"
								class="u-border-none u-btn u-btn-round u-btn-submit u-button-style u-custom-font u-font-montserrat u-palette-2-base u-radius-20 u-btn-2">						
								
</div>
						</form>
					</div>
				</div>
			</div>
		</div>


		<div style="width: 90%;"
			class="u-align-center-sm u-align-center-xs u-align-left-lg u-align-left-md u-align-left-xl u-container-style u-group u-radius-20 u-shape-round u-white u-group-1">
			<div style="width: 90%;"
				class="u-container-layout u-valign-middle-lg u-valign-middle-md u-valign-middle-sm u-valign-middle-xl u-container-layout-1">
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">

							<div class="panel-heading">
								File Attach
							</div>
							<!-- /.panel-heading -->
							<div class="panel-body">
								<div class="form-group uploadDiv">
									<input type="file" name="uploadFile" id="file"
										multiple="multiple">
								</div>
<div class="upload" id="upload"> 
        	<ul>
        	<c:forEach items="${attachView }" var="attachView">
        		<li data-file='${attachView.fileName }' data-uuid='${attachView.uuid }'>
        		<div><span>${attachView.fileName }</span>
        		<button type='button' data-file='${attachView.uploadPath }/s_${attachView.uuid }${attachView.fileName }'
				data-type='image' data-uuid='${attachView.uuid }' class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>
        		<img alt="" src="resources/upload/${attachView.uploadPath }/s_${attachView.uuid }${attachView.fileName }">
        		<input type="radio" name="sum2" id="${attachView.uploadPath }/${attachView.uuid }${attachView.fileName }" class="sum2" value="${attachView.uploadPath }/${attachView.uuid }${attachView.fileName }"></div></li>
        	</c:forEach>
        	</ul>
        </div>

								 <span class="uploadResult" id="uploadResult">
        	<ul>
        	
        	</ul>
        </span>


							</div>
							<!--  end panel-body -->

						</div>
						<!--  end panel-body -->
					</div>
					<!-- end panel -->
				</div>
			</div>
		</div>
	</section>

<%@ include file="./includes/footer.jsp" %>
</body>
</html>