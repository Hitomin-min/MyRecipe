<%@ page language="java" contentType="text/html;charset=Windows-31J"%>
<%@page import="java.sql.*"%>

<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>��������</title>
    <link rel="stylesheet" href="style.css">
<!--     <link rel="stylesheet" href="responsive.css"> -->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

</head>
	<body>
	  <div class="top-wrapper">
        <div class="container">
		<br>
		<%
			ResultSet rset = (ResultSet) request.getAttribute("kekka");
		%>
		<table border="1">
			<tr bgcolor="black" style= "color:white">
				<td><b>ID</b></td><!--1-->
				<td><b>���O</b></td><!--2-->
				<td><b>�ޗ�</b></td><!--3-->
				<td><b>���t��</b></td><!--4-->
				<td><b>TPO</b></td><!--5-->
				<td><b>�\�Z</b></td><!--6-->
				<td><b>�F</b></td><!--7-->
				<td><b>URL</b></td><!--8-->
				<td><b>�폜/�ύX</b></td>
			</tr>
			<%
				while (rset.next()) {
			%>
			<tr bgcolor="white" >
				<td><%=rset.getString(1)%></td>
				<td><%=rset.getString(2)%></td>
				<td><%=rset.getString(3)%></td>
				<td><%=rset.getString(4)%></td>
				<td><%=rset.getString(5)%></td>
				<td><%=rset.getString(6)%></td>
				<td><%=rset.getString(7)%></td>
				<%-- <td><%=rset.getString(8)%></td> --%>
				<td><a href="<%=rset.getString(8)%>"><%=rset.getString(8)%></a></td>

				<%-- <td><a href="Edit?&mode=delete&id=<%=rset.getString(1)%>">�폜</a></td> --%>
				<td>
					<form action="/java_mysql/Edit" method="POST">
						<input type="hidden" name="mode1" value="updateInput"> <input
							type="hidden" name="id" value="<%=rset.getString(1)%>"> <input
							type="hidden" name="name" value="<%=rset.getString(2)%>"> <input
							type="hidden" name="ingredient" value="<%=rset.getString(3)%>"> <input
							type="hidden" name="taste" value="<%=rset.getString(4)%>"> <input
							type="hidden" name="tpo" value="<%=rset.getString(5)%>"> <input
							type="hidden" name="budget" value="<%=rset.getString(6)%>"> <input
							type="hidden" name="color" value="<%=rset.getString(7)%>"> <input
			   				type="hidden" name="color" value="<%=rset.getString(8)%>">
						<input type="submit" name="updateButton" value="�ύX">
			 			<input type="hidden" name="mode2" value="deleteConfirm"> <input
							type="hidden" name="id" value="<%=rset.getString(1)%>"> <input
							type="hidden" name="name" value="<%=rset.getString(2)%>"> <input
							type="hidden" name="ingredient" value="<%=rset.getString(3)%>"> <input
							type="hidden" name="taste" value="<%=rset.getString(4)%>"> <input
							type="hidden" name="tpo" value="<%=rset.getString(5)%>"> <input
							type="hidden" name="budget" value="<%=rset.getString(6)%>"> <input
							type="hidden" name="color" value="<%=rset.getString(7)%>"> <input
			   				type="hidden" name="color" value="<%=rset.getString(8)%>">
						<input type="submit" name="deleteButton" value="�폜">
					</form>
				</td>
			</tr>
			<%
				}
			%>
		</table>
		</div>
		<a href="./index.jsp" class="login">[�߂�]</a>
	  </div>
	          <footer>
      <div class="container">
        <div class="footer-right">
          <a href="./index.jsp" class="login">HOME</a>
        </div>
      </div>
    </footer>
	</body>
</html>
