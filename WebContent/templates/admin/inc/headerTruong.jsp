<%@page import="bean.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="<%=request.getContextPath()%>/templates/public/css/style.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../library/jquery-2.1.1.min.js"></script>
<title>Hệ thống đăng ký đề tài nghiên cứu khoa học</title>
</head>
<body>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#selecctall').click(function(event) {  //on toggle click 
				if(this.checked) { // check toggle status
					$('.checkbox1').each(function() { //select all checkboxes with class "checkbox1"
						this.checked = true;                        
					});
				}else{
					$('.checkbox1').each(function() { //disselect all checkboxes with class "checkbox1"
						this.checked = false;                        
					});			
				}
			});
		});
</script>
	<div class="wrapper">
		<div class="container">
			<div class="header">
				<div class="banner">
					<h1>HỆ THỐNG ĐĂNG KÝ ĐỀ TÀI NGHIÊN CỨU KHOA HỌC - ĐH BÁCH KHOA
						ĐÀ NẴNG</h1>
					<div class="login right">
						<%
							Users users = (Users) session.getAttribute("users");
							if (users == null) {
						%>
						
						<form method="post" action="login" id="mh0">
							<div class="user">
								<label>Số thẻ: </label> <input type="text" class="lg0"
									name="username" id="u0" />
							</div>
							<div class="pass">
								<label>Mật khẩu: </label> <input type="password" class="lg1"
									name="password" id="p0" />
							</div>
							<input type="submit" class="lg2" name="dangnhap" id="s0"
								value="Đăng nhập" />
						</form>
						<%
							} else {
						%>
						<span style="color: white;"><%=users.getFullname()%></span> <a
							href="<%=request.getContextPath()%>/dang-xuat">Logout</a>
						<%
							}
						%>
					</div>
					<div class="clear"></div>
				</div>
			</div>
			<div class="main-body">
				<h2>QUẢN TRỊ TRƯỜNG ĐẠI HỌC BÁCH KHOA ĐÀ NẴNG:</h2>
				<div class="thongbao">
					<div class="menundk">
						<ul>
							<li><a href="khoa-dang-ky">Hiệu chỉnh khóa đăng ký</a></li>
							<li><a href="hieu-chinh-user">Hiệu chỉnh thành viên</a></li>
							<li><a href="hieu-chinh-thong-bao">Hiệu chỉnh thông báo</a></li>
							<li class="capdk"><a href="">Chức năng chỉnh sửa</a>
								<ul class="dkdt">
									<li><a href="">Danh sách các cấp đề tài</a></li>
									<li><a href="">Danh sách các lĩnh vực</a></li>
									<li><a href="">Danh sách các khoa</a></li>
									<li><a href="">Danh sách các chuyên ngành</a></li>
								</ul>
							</li>
							
						</ul>
						<div class="clear"></div>
					</div>