<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>大订单客户查询</title>
</head>
<body>
	<form>
		<p>请选择订单数量</p>
		<select name="quantity">
			<%
				for (int i = 1; i <= 50; i++){
			%>
				<option value="<%=i%>"><%=i%></option>
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