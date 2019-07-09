<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="${ contextPath }/resources/images/favicon.ico">
<script type="text/javascript" src="${ contextPath }/resources/ckeditor/ckeditor.js"></script>
<style>
	#mailTable{
		width: 80%;
		border-collapse : collapse;
		border-top: 2px solid black;
		border-bottom: 2px solid black;
	}   
	#mailTable tr{
		border-bottom : 1px solid #ddd;
	}
	#mailTable tr:nth-child(4){
		height : 200px;
	}
	#mailTable td{
		padding: 15px;
		text-align: left;
	}
	#mailTable th{
		padding-left : 15px;
	}
	input[type=file]{
		display : inline-block !important;
		height : 40px !important;
		width : 350px !important;
		margin-bottom : 8px;
	}
	.fileSize{
		text-align:right;
	}
	.btnArea{
		margin-top : 30px;
		margin-bottom : 50px;
	}
</style>
<title>LetsGoToWork</title>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	
	<div class="row wrap">
		<jsp:include page="../common/sideMenu/mail.jsp"/>
		
		<section class="col-sm-10"><br><br>
			<h3 class="title" align="center">메일작성</h3>
			<div class="content">
				<!--  enctype="multipart/form-data" -->
				<form id="mailForm" action="${ contextPath }/mail/send" method="post" enctype="multipart/form-data">
					<table id="mailTable" align="center">
						<tr>
							<th width="15%">받는사람</th>
							<td>
								<input type="email" name="reciveMail" class="form-control"/>
								<!-- <span class="plusEmail"> + </span> -->
							</td>
							<td width="100px" style="padding: 0; text-align:right"><button class="btn btn-md">주소록</button></td>
						</tr>
						<tr>
							<th>보내는 사람</th>
							<td colspan="2">
								<select class="form-control" name="sendMail">
									<option>admin@lgtw.ga</option>
									<option>lgtw@office.com</option>
									<option>gora7@naver.com</option>
								</select>
							</td>
						</tr>
						<tr>
							<th>제목</th>
							<td colspan="2">
								<input type="text" class="form-control" name="mTitle"/>
							</td>
						</tr>
						<tr>
							<th>내용</th>
							<td colspan="2">
								<textarea name="mContent" id="ckeditor"></textarea>
							</td>
						</tr>
						<tr>	
							<th>첨부파일</th>
							<td colspan="2">
								<div><input type="file" name="mailAttachment" class="form-control"/> 
										<span class="fileSize"></span></div>
								<!-- <div><input type="file" name="mailAttachment" class="form-control"/> <span class="fileSize"></span></div>
								<div><input type="file" name="mailAttachment" class="form-control"/> <span class="fileSize"></span></div> -->
							</td>
						</tr>
					</table>
					
				</form>
				<div class="btnArea" align="center">
					<button class="btn btn-md" onclick="submit()">전송</button>
					<button class="btn btn-md">임시보관</button>
					<button class="btn btn-md">취소</button>
				</div>
			</div>
		</section>
	</div>
	<script>
		// 받는 사람 이메일을 추가하는 작업
		$("span.plusEmail").click(function(){
			$(this).parent().append('<br><input type="email" name="email"/><span class="plusEmail">+</span>');
			$(this).remove();
			return;
		});
		
		// 첨부파일 처리
		$("[name=mailAttachment]").change(function(){
			var size = $($(this)[0].files)[0].size;
			console.log("현재 파일의 사이즈는 " + size);
			// size = 1000000000000000000000000000000000;
			if(size > 1024 * 1024 * 20){
				alert("이미지 파일의 용량이 너무 큽니다. \n20MB이하의 파일만 첨부해주세요.");
				$(this).val("");
				return;
			}else if(size > 1024 * 1024){
				size = Math.floor((size /(1024 * 1024) * 100)) / 100 + "MB";
				console.log("MB");
				console.log(size);
			}else{
				console.log("KB");
				size = Math.floor(size / (1024) * 100) / 100 + "KB";
				console.log(size);
			}
			$(this).parent().find("span.fileSize").text(size);
		});
		
		// 폼태그 제출 메소드
		function submit(){
			$("#mailForm").submit();
		}
		
		// 에디터 
		$(function(){
	        CKEDITOR.replace( 'ckeditor', { //해당 이름으로 된 textarea에 에디터를 적용
	            width:'100%',
	            height:'400px',
	            filebrowserImageUploadUrl: '${ contextPath }/reources/images', //여기 경로로 파일을 전달하여 업로드 시킨다.
	            defaultLanguage:'kor'
	        });
	         
	        CKEDITOR.on('dialogDefinition', function( ev ){
	            var dialogName = ev.data.name;
	            var dialogDefinition = ev.data.definition;
	          
	            switch (dialogName) {
	                case 'image': 
	                    dialogDefinition.removeContents('Link');
	                    dialogDefinition.removeContents('advanced');
	                    break;
	            }
	        });
	    });
	</script>

	<jsp:include page="../common/footer.jsp" />
</body>
</html>