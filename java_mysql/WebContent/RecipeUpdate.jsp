<%@ page language="java" contentType="text/html;charset=Windows-31J" %>
<%@page import="info.searchman.lesson.java_mysql.RecipeBeans"%>

<!--���V�s�ύX���͉��-->

<html>
<head>
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>���V�s�f�[�^�ύX</title>
    <link rel="stylesheet" href="style.css">
<!--     <link rel="stylesheet" href="responsive.css"> -->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

</head>
	<body>
	 <div class="top-wrapper">
      <div class="container">
       <div class="search">
		<%
			//�u�ύX�O�v�f�[�^��ێ�
			RecipeBeans recipe =(RecipeBeans)request.getAttribute( "recipe" );
		%>
		<br>

		<h1>�ύX������͂��Ă�������</h1>
		<br>
		<div class="form">
		<form action="/java_mysql/Edit" method="POST">
		<!-- ���L�̂����A�������ʁi���o�^�f�[�^�j��ێ����Ă���̂́A�v���_�E���ȊO�́uID�v�u���V�s���v�u�ޗ��v�u���t���v �uURL�v-->
			ID: <%=recipe.getId()%>
			<input type="hidden" name="id"  value="<%=recipe.getId()%>"><br>
			���V�s��: <input type="text" name="name"  value="<%= recipe.getName()%>"><br>
			�ޗ�: <input type="text" name="ingredient"  value="<%= recipe.getIngredient()%>"><br>
			���t��: <input type="text" name="taste"  value="<%= recipe.getTaste()%>"><br>
			TPO:
		 		<input type = "checkbox" name="tpo" value="���ٓ�"/>���ٓ�
		 		<input type = "checkbox" name="�Ƃ���" value="�Ƃ���"/>�Ƃ���
		 		<input type = "checkbox" name="�p�[�e�B�[" value="�p�[�e�B�["/>�p�[�e�B�[
		 		<input type = "checkbox" name="���܂�" value="���܂�"/>���܂�
		 		<input type = "checkbox" name="�X�C�[�c" value="�X�C�[�c"/>�X�C�[�c<br>
			�\�Z: <SELECT NAME="budget">
				<OPTION VALUE="0" selected></OPTION>
				<OPTION VALUE="300">300�~</OPTION>
				<OPTION VALUE="500">500�~</OPTION>
				<OPTION VALUE="800">800�~</OPTION>
				<OPTION VALUE="1000~">1000�~~</OPTION>
			</SELECT> <br>
			�F: <SELECT NAME="color">
				<OPTION VALUE=" " selected></OPTION>
				<OPTION VALUE="��">��</OPTION>
				<OPTION VALUE="��">��</OPTION>
				<OPTION VALUE="��">��</OPTION>
				<OPTION VALUE="��">��</OPTION>
				<OPTION VALUE="��">��</OPTION>
				<OPTION VALUE="��">��</OPTION>
				<OPTION VALUE="MIX">MIX</OPTION>
			</SELECT> <br>
			URL: <input type="text" name="url"  value="<%= recipe.getUrl()%>">


			<br>
			<br>
			<div class="btn-wrapper">
			<input type="hidden" name="mode1" value="update">
			<input type="submit" name="updateConfButton" class="btn henkou2"value="�ύX�m��">
			</div>
		</form>
		</div>
<!--  �������ʂ�ێ������܂�-->
		<a href="javascript:history.back()">[�߂�]</a>
    </div>
    </div>
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