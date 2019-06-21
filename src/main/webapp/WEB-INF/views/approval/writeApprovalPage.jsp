<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LetsGoToWork</title>
<style>
	.head{
		background:#e8e8e8;
	}

	td{
		vertical-align:middle !important;
		font-size:12px;
	}
	

</style>
</head>
<body>
<script type="text/javascript" src="${ contextPath }/resources/ckeditor/ckeditor.js"></script>
	<jsp:include page="../common/menubar.jsp"/>
	
	<div class="row wrap">
		<jsp:include page="../common/sideMenu/approval.jsp"/>
		
		<section class="col-sm-10">
			<h3 class="title">문서 작성</h3>
			<hr>
			<table class="table table-bordered">
			    <tbody>
			      <tr>
			        <td class="head">문서종류</td>
			        <td>
						<select class="form-control" id="dcmType">
							<option>선택</option>
							<option value="test1">test</option>
							<option value="test2">test2</option>
							<%-- <c:forEach>
								조회해온 값 출력(양식)
							</c:forEach> --%>
						</select>
					</td>
					<td class="head">작성자</td>
					<td>이지현</td>
			      </tr>
			      <tr>
			        <td class="head">보존기간</td>
			        <td>
						<select class="form-control">
							<option>선택</option>
							<option>1년</option>
							<option>3년</option>
							<option>5년</option>
							<option>10년</option>
						</select>
					</td>
					<td class="head">보안등급</td>
					<td>
						<select class="form-control">
							<option>선택</option>
							<option>S등급</option>
							<option>A등급</option>
							<option>B등급</option>
							<option>C등급</option>
						</select>
					</td>
			      </tr>
			    <tbody>
	  		</table>
			<table class="table table-bordered" style="text-align:center">
				<tr id="jobName">
					<td rowspan="3" width="80px" style="background:#e8e8e8;">결재</td>
					<td width="80px" height="30px"></td>
					<td width="80px"></td>
					<td width="80px"></td>
					<td width="80px"></td>
					<td width="80px"></td>
					<td width="80px"></td>
					<td width="80px"></td>
					<td width="80px"></td>
				</tr>
				<tr height="75px" id="approval">
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr height="30px" id="empName">
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td style="background:#e8e8e8;">참조</td>
					<td colspan="8" id="circleEmpName">
						<input type="text" name="circle" style="float:left">
					</td>
				</tr>
				<tr>
					<td style="background:#e8e8e8;">수신</td>
					<td colspan="8" id="receptionEmpName">
						<input type="text" name="reception" style="float:left">
					</td>
				</tr>
			</table>
			<table class="table table-bordered"><tr><td width="100px" style="background:#e8e8e8">회람</td><td align="left"><input type="text" name="empName"></td></tr></table>
			
			<table class="table table-bordered" style="text-align:center">
				<tr id="jobName">
					<td rowspan="3" width="80px" style="background:#e8e8e8;">결재</td>
					<td width="80px" height="30px"></td>
					<td width="80px"></td>
					<td width="80px"></td>
					<td width="80px"></td>
					<td width="80px"></td>
					<td width="80px"></td>
					<td width="80px"></td>
					<td width="80px"></td>
				</tr>
				<tr height="75px" id="approval">
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr height="30px" id="empName">
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td style="background:#e8e8e8;">합의</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td style="background:#e8e8e8;">참조</td>
					<td colspan="8" id="circleEmpName">
						<input type="text" name="reception" style="float:left">
					</td>
				</tr>
			</table>
			
			<table class="table table-bordered" style="text-align:center">
				<tr id="jobName">
					<td rowspan="3" width="80px" style="background:#e8e8e8;">결재</td>
					<td width="80px" height="30px"></td>
					<td width="80px"></td>
					<td width="80px"></td>
					<td width="80px"></td>
					<td width="80px"></td>
					<td width="80px"></td>
					<td width="80px"></td>
					<td width="80px"></td>
				</tr>
				<tr height="75px" id="approval">
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr height="30px" id="empName">
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				
				<tr>
					<td style="background:#e8e8e8;" rowspan="3">재무합의</td>
					<td width="80px" height="30px"></td>
					<td width="80px"></td>
					<td width="80px"></td>
					<td width="80px"></td>
					<td width="80px"></td>
					<td width="80px"></td>
					<td width="80px"></td>
					<td width="80px"></td>
				</tr>
				<tr height="75px" id="approval">
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr height="30px" id="empName">
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr id="agreement">
					<td style="background:#e8e8e8;">합의</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td style="background:#e8e8e8;">참조</td>
					<td colspan="8" id="circleEmpName">
						<input type="text" name="reception" style="float:left">
					</td>
				</tr>
			</table>
			
			
			<table class="table table-bordered" style="text-align:center">
				<tr id="jobName">
					<td rowspan="3" width="80px" style="background:#e8e8e8;">신청</td>
					<td width="80px" height="30px"></td>
					<td width="80px"></td>
					<td width="80px"></td>
					<td width="80px"></td>
					<td rowspan="3" width="80px" style="background:#e8e8e8;">처리</td>
					<td width="80px"></td>
					<td width="80px"></td>
					<td width="80px"></td>					
				</tr>
				<tr height="75px" id="approval">
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>

				</tr>
				<tr height="30px" id="empName">
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>

				</tr>
				<tr>
					<td style="background:#e8e8e8;">참조</td>
					<td colspan="8" id="circleEmpName">
						<input type="text" name="circle" style="float:left">
					</td>
				</tr>
			</table>
			
			
			<div id="area" class="content" style="visibility:hidden;">
				<form class="form-horizontal" role="form" id="editorForm" method="post" action="/">
					<a href="#">결재선설정</a><br>
					<table class="table table-bordered">
						<!-- 불러온 결재폼 영역 -->
					</table>
					<label>내용</label>
					<div class="approvalFormArea">
						<table></table>
					</div>
				    <div class="form-group">
				        <div class="form-group">
				            <div class="col-lg-12">
				                <textarea name="ckeditor" id="ckeditor"></textarea>
				            </div>
				        </div>
				        <div class="form-group">
				            <div class="col-lg-12" align="right">
				            	<button type="button" class="btn btn-md btn-default">취소</button>
				                <button type="submit" class="btn btn-md btn-primary">저장</button>
				            </div>
				        </div>
				    </div>
				</form>
	 		
			</div>
		</section>
	</div>
	
	<jsp:include page="../common/footer.jsp" />
<script>
	$(function(){
		$("#dcmType").change(function(){
			console.log($(this).val());
			console.log($("#area").css("visibility"));
			$("#area").attr('style','visibility:visible');
		});
	});

    $(function(){
         
        CKEDITOR.replace( 'ckeditor', {//해당 이름으로 된 textarea에 에디터를 적용
            width:'100%',
            height:'400px',
            filebrowserImageUploadUrl: '${ contextPath }/reources/images', //여기 경로로 파일을 전달하여 업로드 시킨다.
            defaultLanguage:'kor'
        });
         
         
        CKEDITOR.on('dialogDefinition', function( ev ){
            var dialogName = ev.data.name;
            var dialogDefinition = ev.data.definition;
          
            switch (dialogName) {
                case 'image': //Image Properties dialog
                    //dialogDefinition.removeContents('info');
                    dialogDefinition.removeContents('Link');
                    dialogDefinition.removeContents('advanced'); 
                    break;
            }
        });
         
    });
</script>
</body>
</html>