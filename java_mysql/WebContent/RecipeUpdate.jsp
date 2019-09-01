<%@ page language="java" contentType="text/html;charset=Windows-31J" %>
<%@page import="info.searchman.lesson.java_mysql.RecipeBeans"%>

<!--レシピ変更入力画面-->

<html>
<head>
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>レシピデータ変更</title>
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

		<h1>変更情報を入力してください</h1>
		<br>
		<div class="form">
		<form action="/java_mysql/Edit" method="POST">
		<!-- 下記のうち、検索結果（元登録データ）を保持しているのは、プルダウン以外の「ID」「レシピ名」「材料」「味付け」 「URL」-->
			ID: <%=recipe.getId()%>
			<input type="hidden" name="id"  value="<%=recipe.getId()%>"><br>
			レシピ名: <input type="text" name="name"  value="<%= recipe.getName()%>"><br>
			材料: <input type="text" name="ingredient"  value="<%= recipe.getIngredient()%>"><br>
			味付け: <input type="text" name="taste"  value="<%= recipe.getTaste()%>"><br>
			TPO:
		 		<input type = "checkbox" name="tpo" value="お弁当"/>お弁当
		 		<input type = "checkbox" name="家ご飯" value="家ご飯"/>家ご飯
		 		<input type = "checkbox" name="パーティー" value="パーティー"/>パーティー
		 		<input type = "checkbox" name="おつまみ" value="おつまみ"/>おつまみ
		 		<input type = "checkbox" name="スイーツ" value="スイーツ"/>スイーツ<br>
			予算: <SELECT NAME="budget">
				<OPTION VALUE="0" selected></OPTION>
				<OPTION VALUE="300">300円</OPTION>
				<OPTION VALUE="500">500円</OPTION>
				<OPTION VALUE="800">800円</OPTION>
				<OPTION VALUE="1000~">1000円~</OPTION>
			</SELECT> <br>
			色: <SELECT NAME="color">
				<OPTION VALUE=" " selected></OPTION>
				<OPTION VALUE="赤">赤</OPTION>
				<OPTION VALUE="黄">黄</OPTION>
				<OPTION VALUE="緑">緑</OPTION>
				<OPTION VALUE="茶">茶</OPTION>
				<OPTION VALUE="黒">黒</OPTION>
				<OPTION VALUE="紫">紫</OPTION>
				<OPTION VALUE="MIX">MIX</OPTION>
			</SELECT> <br>
			URL: <input type="text" name="url"  value="<%= recipe.getUrl()%>">


			<br>
			<br>
			<div class="btn-wrapper">
			<input type="hidden" name="mode1" value="update">
			<input type="submit" name="updateConfButton" class="btn henkou2"value="変更確定">
			</div>
		</form>
		</div>
<!--  検索結果を保持したまま-->
		<a href="javascript:history.back()">[戻る]</a>
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