<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/common-header.jspf" %>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/board.write.css"/>">
<script src="<c:url value="/resources/js/ckeditor/ckeditor.js"/>"></script>
<script>
	window.onload = function() {
		CKEDITOR.replace('q_content');
		
		var f = document.mForm;
		f.q_category1.value='${data.Q_CATEGORY1}';
		f.q_category2.value='${data.Q_CATEGORY2}';
		f.q_title.value='${data.Q_TITLE}';
	}
	
	function fn_validation(){
		var title = document.getElementById("q_title");
		var content = CKEDITOR.instances.q_content;
		
		if(!title.value){
			alertify.error("제목이 입력되지 않았습니다.");
			subject.focus();
			return false;
		}
		
		if(!content.getData()){
			alertify.error("내용이 입력되지 않았습니다.");
			content.focus();
			return false;
		}
	}
</script>
</head>

<body>
<form name="mForm" action='<c:url value="/qna/modify"/>' method="post" onsubmit="return fn_validation();">
<input type="hidden" name="q_no" value="${data.Q_NO}">
<table class="boardwrite" align=center border="0">

<tr>
<td class="bw_title">카테고리</td>
<td>
<select name="q_category1">
	<option value="문의하기">문의하기</option>
	<option value="신고하기">신고하기</option>
</select>
</td>
</tr>

<tr>
<td class="bw_title">세부 카테고리</td>
<td>
<select name="q_category2">
	<optgroup label="문의하기">
	<option value="광고">광고</option>
	<option value="기능">기능</option>
	<option value="오류">오류</option>
	<option value="제안">제안</option>
	<option value="장소">장소</option>
	<option value="기타">기타</option>
	</optgroup>
	<optgroup label="신고하기">
	<option value="허위광고">허위광고</option>
	<option value="명예훼손/욕설/음란">명예훼손/욕설/음란</option>
	<option value="개인정보노출">개인정보노출</option>
	<option value="저작권위반">저작권위반</option>
	<option value="기타">기타</option>
	</optgroup>
</select>
</td>
</tr>

<tr>
<td class="bw_title">제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목</td>
<td><input id="b_title" type="text" name="q_title" size="100%"></td>
</tr>

<tr>
<td class="bw_title">내&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;용</td>
<td><textarea name="q_content">${data.Q_CONTENT }</textarea></td>
</tr>

<tr>
<td colspan="2" align="right" style="border:none;">
<input type="submit" value="저장">
<input type="button" value="취소" onclick="history.back();">
</td>
</tr>

</table>
</form>

</body>
</html>