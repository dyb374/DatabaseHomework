<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>订单优先检查查询</title>
</head>
<body>
	<form>
		<p>请选择年份</p>
		<select name="year">
			<%
				for (int i = 1992; i <= 1998; i++){
			%>
				<option value="<%=i%>"><%=i%></option>
			<%
				}
			%>		
		</select>
		
		<p>请选择季度</p>
		<select name="quarter">
			<option value = "1">第一季度</option>
			<option value = "2">第二季度</option>
			<option value = "3">第三季度</option>
			<option value = "4">第四季度</option>
		</select>	
		<br />
		<br />
		<input type="submit" value="查询">
	</form>
</body>
</html>