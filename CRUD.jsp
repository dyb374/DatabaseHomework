<%@page import="javabeans.ColumnsData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="models.ShowTables"%>
<%@page import="javabeans.TablesData"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>CRUD</title>
</head>
<body>
	<%
		TablesData data = new TablesData();
		ShowTables show = new ShowTables();
		show.showTables(data);
	%>
	<p>信息查询</p>
	<p>请选择表</p>
	<form action="CRUDServlet1" method="POST">
		<select name="table">
			<%
				for (int i = 0; i < data.getTables().size(); i++) {
			%>
			<option value="<%=data.getTables().get(i)%>"><%=data.getTables().get(i)%></option>
			<%
				}
			%>
		</select> <input type="submit" value="查询">
	</form>


	<%
		if (request.getAttribute("data") != null) {
			ArrayList<ColumnsData> cdata = (ArrayList<ColumnsData>) request.getAttribute("data");
	%>
	<table border="1">
		<tr>
			<td>Field</td>
			<td>Type</td>
			<td>Null</td>
			<td>Key</td>
			<td>Default</td>
			<td>Extra</td>
		</tr>
		<%
			for (int i = 0; i < cdata.size(); i++) {
		%>
		<tr>
			<td><%=cdata.get(i).getField()%></td>
			<td><%=cdata.get(i).getType()%></td>
			<td><%=cdata.get(i).getnUll()%></td>
			<td><%=cdata.get(i).getKey()%></td>
			<td><%=cdata.get(i).getdEfault()%></td>
			<td><%=cdata.get(i).getExtra()%></td>
		</tr>
		<%
			}
		%>
	</table>
	<%
		}
	%>
	</table>

	<p>请选择操作类型</p>
	<form action="CRUDServlet2">
		<select name="type">
			<option value="null" selected> </option>
			<option value="insert">插入</option>
			<option value="select">查询</option>
			<option value="update">更新</option>
			<option value="delete">删除</option>
		</select> <br /> <br /> <input type=text name="sql"
			value="Please enter your sql"> <input type="submit"
			value="提交">
	</form>
</body>
</html>