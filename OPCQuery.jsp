<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>�������ȼ���ѯ</title>
</head>
<body>
	<form>
		<p>��ѡ�����</p>
		<select name="year">
			<%
				for (int i = 1992; i <= 1998; i++){
			%>
				<option value="<%=i%>"><%=i%></option>
			<%
				}
			%>		
		</select>
		
		<p>��ѡ�񼾶�</p>
		<select name="quarter">
			<option value = "1">��һ����</option>
			<option value = "2">�ڶ�����</option>
			<option value = "3">��������</option>
			<option value = "4">���ļ���</option>
		</select>	
		<br />
		<br />
		<input type="submit" value="��ѯ">
	</form>
</body>
</html>