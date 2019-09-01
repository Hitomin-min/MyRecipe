<%@ page language="java" contentType="text/html;charset=Windows-31J" %>
<%@page import="info.searchman.lesson.java_mysql.RecipeBeans"%>
<%@page import="java.sql.*"%>
<html>
	<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>レシピデータ削除確認</title>
    <link rel="stylesheet" href="style.css">
<!--     <link rel="stylesheet" href="responsive.css"> -->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

	</head>
	<body>
	<div class="top-wrapper">
      <div class="container">
       <div class="search">
	　　<%
			//「変更前」データを保持
			RecipeBeans recipe =(RecipeBeans)request.getAttribute( "recipe" );
		%>

		<br>
		<h1>こちらのレシピを削除します</h1>
		<br>
<div class="form">
			ID: <%=recipe.getId()%><br>
			レシピ名: <%= recipe.getName()%><br>
			材料: <%= recipe.getIngredient()%><br>
			味付け: <%= recipe.getTaste()%><br>
			TPO: <%= recipe.getTpo()%><br>
			予算: <%= recipe.getBudget()%><br>
			色: <%= recipe.getColor()%><br>
			URL: <%= recipe.getUrl()%><br>
</div>


		<form action="/java_mysql/Edit" method="POST">
			<input type="hidden" name="id" value="<%= recipe.getId() %>">
			<input type="hidden" name="name" value="<%= recipe.getName() %>">
			<input type="hidden" name="ingredient" value="<%= recipe.getIngredient() %>">
			<input type="hidden" name="taste" value="<%= recipe.getTaste() %>">
			<input type="hidden" name="tpo" value="<%= recipe.getTpo() %>">
			<input type="hidden" name="budget" value="<%= recipe.getBudget() %>">
			<input type="hidden" name="color" value="<%= recipe.getColor() %>">
			<input type="hidden" name="url" value="<%= recipe.getUrl() %>">
			<input type="hidden" name="mode2" value="delete">
			<input type="submit" name="deleteConfButton" value="削除">
		</form>

		<!-- <a href="./SearchResult.jsp">１つ前の画面に戻る</a> -->
 <a href="javascript:history.back()">[戻る]</a>
    </div>

    </div>
    </div>
     <footer>
      <div class="container">
        <div class="footer-right">
          <a href="./index.jsp" class="login">HOME</a><!--  １つ前の画面に戻る-->
        </div>
      </div>
    </footer>
	</body>
</html>
