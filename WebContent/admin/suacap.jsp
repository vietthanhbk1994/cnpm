<%@page import="bean.Cap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="../templates/admin/inc/headerTruong.jsp"%>
<%
	Cap cap = (Cap) request.getAttribute("cap");
%>
	<div class="suaCap">
		<form action="<%=request.getContextPath()%>/admin/setting?load=sua&act=dasua&idSua=<%=cap.getIdCap() %>" method="post">
			<label>Tên cấp đề tài:</label>
			<input type="text" name="tenSua" value="<%=cap.getTenCap() %>" required />
			<input type="submit" name="submit" value="Chỉnh sửa cấp"/>
		</form>
	</div>
</body>
</html>