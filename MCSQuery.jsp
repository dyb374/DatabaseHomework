<%@page import="javabeans.MCSInitData"%>
<%@page import="models.InitMCS"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>最低成本供应商查询</title>
</head>
<body>
	<%
		MCSInitData data = new MCSInitData();
		InitMCS init = new InitMCS();
		init.initMCS(data);
	%>
	<form action="">
		<p>请选择商品种类</p>
		<select name="type">
			<%
				for (int i = 0; i < data.getType().size(); i++){
			%>
				<option value = "<%=data.getType().get(i)%>"><%=data.getType().get(i)%></option>
			<%
				}
			%>
		</select>
		
		<p>请选择商品尺寸</p>
		<select name="size">
			<%
				for (int i = 0; i < data.getSize().size(); i++){
			%>
				<option value = "<%=data.getSize().get(i)%>"><%=data.getSize().get(i)%></option>
			<%
				}
			%>
		</select>
		
		<p>请选择商品所在地区</p>
		<select name="region">
			<%
				for (int i = 0; i < data.getRegion().size(); i++){
			%>
				<option value = "<%=data.getRegion().get(i)%>"><%=data.getRegion().get(i)%></option>
			<%
				}
			%>
		</select>
		<br />
		<br />
		<input type="submit" value="查询">
	</form>
</body>
</html>