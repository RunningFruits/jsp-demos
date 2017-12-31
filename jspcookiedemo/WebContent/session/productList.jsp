<%@page import="com.ggod.utils.MyCookieUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
.img1 {
	width: 160px;
	height: 140px;
}

.img2 {
	width: 80px;
	height: 70px;
}
</style>

</head>
<body>

	<img class="img1" src="/jspcookiedemo/img/1.jpg">
	<a href="/jspcookiedemo/product?id=1">手电筒</a>
	<img class="img1" src="/jspcookiedemo/img/2.jpg">
	<a href="/jspcookiedemo/product?id=2">电话</a>
	<img class="img1" src="/jspcookiedemo/img/3.jpg">
	<a href="/jspcookiedemo/product?id=3">电视</a>
	<br />
	<img class="img1" src="/jspcookiedemo/img/4.jpg">
	<a href="/jspcookiedemo/product?id=4">冰箱</a>
	<img class="img1" src="/jspcookiedemo/img/5.jpg">
	<a href="/jspcookiedemo/product?id=5">手表</a>
	<img class="img1" src="/jspcookiedemo/img/6.jpg">
	<a href="/jspcookiedemo/product?id=6">电脑</a>

	<h3>浏览记录</h3>
	<h3>
		<a href="/jspcookiedemo/remove">清除记录</a>
	</h3>

	<%
		// 获取cookie中的value，1,2,3    循环遍历，  
		Cookie[] cookies = request.getCookies();
		// 查找指定名称的cookie  
		Cookie cookie = MyCookieUtil.getCookieByName(cookies, "product");
		// 如果cookie不为空，拿到值，遍历  
		if (cookie != null) {
			// 获取值  1,2,3  
			String value = cookie.getValue();
			// 分隔  
			String[] ids = value.split(",");
			// 循环遍历，获取id  
			for (String id : ids) {
	%>
	<img class="img2" src="/jspcookiedemo/img/<%=id%>.jpg">
	<br />
	<%
		}
		}
	%>

</body>
</html>
