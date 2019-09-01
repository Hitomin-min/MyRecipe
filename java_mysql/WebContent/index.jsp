<%@ page language="java" contentType="text/html;charset=Windows-31J"%>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>レシピマネージャー</title>
    <link rel="stylesheet" href="style.css">
<!--     <link rel="stylesheet" href="responsive.css"> -->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

<script type="text/javascript">
	/*「検索」ボタンが押されて「全項目未入力」ならポップアップ*/
	/* function PushSearchButton(){
		var name = document.inform.name.value;
		var ingredient = document.inform.ingredient.value;
		var taste = document.inform.taste.value;
		var tpo = document.inform.tpo.value;
		var budget = document.inform.budget.value;
		var color = document.inform.color.value;
		if(name == "" && ingredient == "" && taste == "" && tpo == "" && budget == "" && color == ""){
			alert("最低一つは検索条件を設定してください");
			return false;
		}
		document.inform.submit();
	} */
	/*「登録」ボタンが押されて「レシピ名が未入力」ならポップアップ*/
	function PushAddButton(){
		var name = document.inform.name.value;
		if(name == ""){
			alert("レシピ名は必ず入力してください");
			return false;
		}
		document.inform.submit();
	}
</script>
	</head>
	<body>
	<div class = "wrapper">
	 <div class="top-wrapper">
      <div class="container">
       <div class="search">
        <h1>レシピを検索する</h1>
        <br>
          <div class="form">
        	<form action="/java_mysql/Search" method="POST">
				レシピ名: <input type="text" name="name"><br>
				材料:    <input type="text" name="ingredient"><br>
				味付け:
				<input type = "radio" name="radio4" value="お弁当"/>甘い
		 		<input type = "radio" name="radio4" value="家ご飯"/>甘じょっぱ
		 		<input type = "radio" name="radio4" value="おつまみ"/>甘酢
		 		<input type = "radio" name="radio4" value="おつまみ"/>お酢
		 		<input type = "radio" name="radio4" value="おつまみ"/>醤油
		 		<input type = "radio" name="radio4" value="おつまみ"/>鶏ガラ
		 		<input type = "radio" name="radio4" value="スイーツ"/>その他<br>
		 		TPO:
		 		<input type = "radio" name="radio1" value="お弁当"/>お弁当
		 		<input type = "radio" name="radio1" value="家ご飯"/>家ご飯
		 		<input type = "radio" name="radio1" value="パーティー"/>パーティー
		 		<input type = "radio" name="radio1" value="おつまみ"/>おつまみ
		 		<input type = "radio" name="radio1" value="スイーツ"/>スイーツ<br>
				予算：<SELECT NAME="budget">
					<OPTION VALUE="" selected></OPTION>
					<OPTION VALUE="300">300円</OPTION>
					<OPTION VALUE="500">500円</OPTION>
					<OPTION VALUE="800">800円</OPTION>
					<OPTION VALUE="1000">1000円</OPTION>
					<OPTION VALUE="1000~">1000円~</OPTION>
				</SELECT> <br>
				色: <SELECT NAME="color">
					<OPTION VALUE="" selected></OPTION>
					<OPTION VALUE="red">赤</OPTION>
					<OPTION VALUE="yellow">黄</OPTION>
					<OPTION VALUE="green">緑</OPTION>
					<OPTION VALUE="brown">茶</OPTION>
					<OPTION VALUE="black~">黒</OPTION>
					<OPTION VALUE="purple~">紫</OPTION>
					<OPTION VALUE="mix">MIX</OPTION>
				</SELECT> <br>
			<br>
			<div class="btn-wrapper">
          <input type="submit" value="検索" class="btn kensaku">
              </div>
		</form>

              </div>
		</div>
		</div>
	  </div>
	  </div>
	<div class="add-wrapper">
      <div class="container">
		<br>
	    <div class="search">
		<h1>レシピを登録する</h1>
		<br>
<div class="form">
		<form action="/java_mysql/Edit" method="POST">

			レシピ名: <input type="text" name="name"><br>
			材料: <input type="text" name="ingredient"><br>
			味付け:
				<input type = "radio" name="radio3" value="お弁当"/>甘い
		 		<input type = "radio" name="radio3" value="家ご飯"/>甘じょっぱ
		 		<input type = "radio" name="radio3" value="おつまみ"/>甘酢
		 		<input type = "radio" name="radio3" value="おつまみ"/>お酢
		 		<input type = "radio" name="radio3" value="おつまみ"/>醤油
		 		<input type = "radio" name="radio3" value="おつまみ"/>鶏ガラ
		 		<input type = "radio" name="radio3" value="スイーツ"/>その他<br>
	 		TPO:
		 		<input type = "radio" name="radio2" value="お弁当"/>お弁当
		 		<input type = "radio" name="radio2" value="家ご飯"/>家ご飯
		 		<input type = "radio" name="radio2" value="パーティー"/>パーティー
		 		<input type = "radio" name="radio2" value="おつまみ"/>おつまみ
		 		<input type = "radio" name="radio2" value="スイーツ"/>スイーツ<br>
	 		予算: <SELECT NAME="budget">
				<OPTION VALUE="0" selected></OPTION>
				<OPTION VALUE="300">300円</OPTION>
				<OPTION VALUE="5	00">500円</OPTION>
				<OPTION VALUE="800">800円</OPTION>
				<OPTION VALUE="1000">1000円</OPTION>
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
			URL: <input type="text" name="url"><br>
				<div class="btn-wrapper">
                 <input type="hidden" name="mode3" value="add">
			     <input type="submit" name="addButton" value="登録" class="btn touroku" onclick="return PushAddButton()">
			     </div>
		</form>

		</div>
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