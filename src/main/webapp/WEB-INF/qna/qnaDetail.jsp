<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/include/common-header.jspf" %>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/board.write.css"/>">
<script src="<c:url value="/resources/js/ckeditor/ckeditor.js"/>"></script>
<script>
	window.onload = function() {
		CKEDITOR.replace('q_content');
	}
</script>
</head>
<body>

<table style="width:890px;" border="0" align=center>
<tr>
<td style="font-weight: bold;font-size: large;font-family: sans-serif;">Q&A</td>
<td align="right"><input type="button" value="목록보기" id="backQnaListBtn"></td>
</tr>
</table>

<table class="boardwrite" align=center border="0">

<tr>
<td class="bw_title">카테고리</td>
<td  class="bw_content">
${data.Q_CATEGORY1}
</td>
</tr>

<tr>
<td class="bw_title">세부카테고리</td>
<td  class="bw_content">
${data.Q_CATEGORY2}
</td>
</tr>

<tr>
<td class="bw_title">제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목</td>
<td class="bw_content">${data.Q_TITLE}</td>
</tr>

<tr>
<td colspan="2">
<textarea id="q_content" disabled="disabled">${data.Q_CONTENT}</textarea>
</td>
</tr>

<c:if test="${sessionScope.session_m_no != null && sessionScope.session_m_no == data.M_NO }">
<tr>
<td colspan="2" align="right" style="border:none;">
<input type="button" value="수정" id="modifyBtn">
<input type="button" value="삭제" id="deleteBtn">
</td>
</tr>
</c:if>
</table>

<%@ include file="/WEB-INF/include/common-body.jspf" %>
<script type="text/javascript">
    $(document).ready(function(){
        
        $("#modifyBtn").on("click", function(e){ // 수정버튼
            e.preventDefault();
            fn_qnaModify();
        });
        
        $("#deleteBtn").on("click", function(e){ // 삭제버튼
            e.preventDefault();
            fn_qnaDelete();
        });
        
        $("#backQnaListBtn").on("click",function(e){ // 목록버튼
        	e.preventDefault();
        	var url = "<c:url value='/qna?currentPageNo=${currentPageNo}'/>";
        	$(location).attr("href",url);
        });
    });
    
	function fn_qnaModify(){
		var cs = new CustomSubmit();
        cs.setUrl("<c:url value='/qna/modify' />");
        cs.addParam("q_no", '${data.Q_NO }');
        cs.submit("GET");
	}
	
	function fn_qnaDelete(){
		var cs = new CustomSubmit();
        cs.setUrl("<c:url value='/qna/delete' />");
        cs.addParam("q_no", '${data.Q_NO }');
        cs.submit();
	}
</script> 

</body>
</html>