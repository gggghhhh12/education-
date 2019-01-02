<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@page import="priv.zx.ecruit.model.News"%>
<%@page import="priv.zx.ecruit.dao.NewsDao"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>主页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<style type="text/css">
		<%@ include file="./css/mainPage.css"%>
	</style>
	<script type="text/javascript" src="./js/jquery.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			var msg=$("#msg").val();
			if(msg!='null'&&msg!='undefined'&&msg!=""){
				alert(msg);
			}
		});
	</script>
  </head>
  <body>
  <input type="hidden" id="msg" value="<%=(String)request.getAttribute("msg") %>">
    <div id="header">
		<nav>
			<div class="logo"><a href="servlet/MainPageServlet">工大智能人才招聘系统</a></div>
			<ul>
				<li><a>注册</a>
					<ul>
						<li><a href="stuRegister.jsp">毕业生注册</a></li>
						<li><a href="EPRegister.jsp">企业注册</a></li>
					</ul>
				</li>
				<li><a>登录</a>
					<ul>
						<li><a href="stuLogin.jsp">毕业生登录</a></li>
						<li><a href="EPLogin.jsp">企业登录</a></li>
						<li><a href="adminLogin.jsp">管理员登录</a></li>
					</ul>
				</li>
			<li><a href = "CompanyIntroduce.html"><font color = "white">了解我们</font></a></li>
			</ul>
		</nav>
	</div>
	<div id="content">
		<div class="picture"></div>
		<section class="news">
			<div class="heading">
			<h1>肩负工大科教兴国社会责任 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;打造高新企业人才服务平台</h1>
			<h1> &nbsp;</h1>
				<p>工大人才网近期招聘信息</p>
				
				<div class="hr"></div>
			</div>
			<div class="cards">
				<div class="card">
					<h2>${arrNews[0].news_title }</h2>
					<hr align="center" size="1px" color="#FFF" noshade>
					<p>${arrNews[0].news_content }</p>
					<p>${arrNews[0].news_time }</p>
				</div>
				<div class="card">
					<h2>${arrNews[1].news_title }</h2>
					<hr align="center" size="1px" color="#FFF" noshade>
					<p>${arrNews[1].news_content }</p>
					<p>${arrNews[1].news_time }</p>
				</div>
				<div class="card">
					<h2>${arrNews[2].news_title }</h2>
					<hr align="center" size="1px" color="#FFF" noshade>
					<p>${arrNews[2].news_content }</p>
					<p>${arrNews[2].news_time }</p>
				</div>
				<div class="card">
					<h2>${arrNews[3].news_title }</h2>
					<hr align="center" size="1px" color="#FFF" noshade>
					<p>${arrNews[3].news_content }</p>
					<p>${arrNews[3].news_time }</p>
				</div>
				<div class="card">
					<h2>${arrNews[4].news_title }</h2>
					<hr align="center" size="1px" color="#FFF" noshade>
					<p>${arrNews[4].news_content }</p>
					<p>${arrNews[4].news_time }</p>
				</div>
				<div class="card">
					<h2>${arrNews[5].news_title }</h2>
					<hr align="center" size="1px" color="#FFF" noshade>
					<p>${arrNews[5].news_content }</p>
					<p>${arrNews[5].news_time }</p>
				</div>
			</div>
		</section>
	</div>
	<div id="footer">
		 
	</div>
  </body>
</html>
