<%@ page language="java" contentType="text/html;charset=Windows-31J"%>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>���V�s�}�l�[�W���[</title>
    <link rel="stylesheet" href="style.css">
<!--     <link rel="stylesheet" href="responsive.css"> -->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

<script type="text/javascript">
	/*�u�����v�{�^����������āu�S���ږ����́v�Ȃ�|�b�v�A�b�v*/
	/* function PushSearchButton(){
		var name = document.inform.name.value;
		var ingredient = document.inform.ingredient.value;
		var taste = document.inform.taste.value;
		var tpo = document.inform.tpo.value;
		var budget = document.inform.budget.value;
		var color = document.inform.color.value;
		if(name == "" && ingredient == "" && taste == "" && tpo == "" && budget == "" && color == ""){
			alert("�Œ��͌���������ݒ肵�Ă�������");
			return false;
		}
		document.inform.submit();
	} */
	/*�u�o�^�v�{�^����������āu���V�s���������́v�Ȃ�|�b�v�A�b�v*/
	function PushAddButton(){
		var name = document.inform.name.value;
		if(name == ""){
			alert("���V�s���͕K�����͂��Ă�������");
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
        <h1>���V�s����������</h1>
        <br>
          <div class="form">
        	<form action="/java_mysql/Search" method="POST">
				���V�s��: <input type="text" name="name"><br>
				�ޗ�:    <input type="text" name="ingredient"><br>
				���t��:
				<input type = "radio" name="radio4" value="���ٓ�"/>�Â�
		 		<input type = "radio" name="radio4" value="�Ƃ���"/>�Â������
		 		<input type = "radio" name="radio4" value="���܂�"/>�Ð|
		 		<input type = "radio" name="radio4" value="���܂�"/>���|
		 		<input type = "radio" name="radio4" value="���܂�"/>�ݖ�
		 		<input type = "radio" name="radio4" value="���܂�"/>�{�K��
		 		<input type = "radio" name="radio4" value="�X�C�[�c"/>���̑�<br>
		 		TPO:
		 		<input type = "radio" name="radio1" value="���ٓ�"/>���ٓ�
		 		<input type = "radio" name="radio1" value="�Ƃ���"/>�Ƃ���
		 		<input type = "radio" name="radio1" value="�p�[�e�B�["/>�p�[�e�B�[
		 		<input type = "radio" name="radio1" value="���܂�"/>���܂�
		 		<input type = "radio" name="radio1" value="�X�C�[�c"/>�X�C�[�c<br>
				�\�Z�F<SELECT NAME="budget">
					<OPTION VALUE="" selected></OPTION>
					<OPTION VALUE="300">300�~</OPTION>
					<OPTION VALUE="500">500�~</OPTION>
					<OPTION VALUE="800">800�~</OPTION>
					<OPTION VALUE="1000">1000�~</OPTION>
					<OPTION VALUE="1000~">1000�~~</OPTION>
				</SELECT> <br>
				�F: <SELECT NAME="color">
					<OPTION VALUE="" selected></OPTION>
					<OPTION VALUE="red">��</OPTION>
					<OPTION VALUE="yellow">��</OPTION>
					<OPTION VALUE="green">��</OPTION>
					<OPTION VALUE="brown">��</OPTION>
					<OPTION VALUE="black~">��</OPTION>
					<OPTION VALUE="purple~">��</OPTION>
					<OPTION VALUE="mix">MIX</OPTION>
				</SELECT> <br>
			<br>
			<div class="btn-wrapper">
          <input type="submit" value="����" class="btn kensaku">
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
		<h1>���V�s��o�^����</h1>
		<br>
<div class="form">
		<form action="/java_mysql/Edit" method="POST">

			���V�s��: <input type="text" name="name"><br>
			�ޗ�: <input type="text" name="ingredient"><br>
			���t��:
				<input type = "radio" name="radio3" value="���ٓ�"/>�Â�
		 		<input type = "radio" name="radio3" value="�Ƃ���"/>�Â������
		 		<input type = "radio" name="radio3" value="���܂�"/>�Ð|
		 		<input type = "radio" name="radio3" value="���܂�"/>���|
		 		<input type = "radio" name="radio3" value="���܂�"/>�ݖ�
		 		<input type = "radio" name="radio3" value="���܂�"/>�{�K��
		 		<input type = "radio" name="radio3" value="�X�C�[�c"/>���̑�<br>
	 		TPO:
		 		<input type = "radio" name="radio2" value="���ٓ�"/>���ٓ�
		 		<input type = "radio" name="radio2" value="�Ƃ���"/>�Ƃ���
		 		<input type = "radio" name="radio2" value="�p�[�e�B�["/>�p�[�e�B�[
		 		<input type = "radio" name="radio2" value="���܂�"/>���܂�
		 		<input type = "radio" name="radio2" value="�X�C�[�c"/>�X�C�[�c<br>
	 		�\�Z: <SELECT NAME="budget">
				<OPTION VALUE="0" selected></OPTION>
				<OPTION VALUE="300">300�~</OPTION>
				<OPTION VALUE="5	00">500�~</OPTION>
				<OPTION VALUE="800">800�~</OPTION>
				<OPTION VALUE="1000">1000�~</OPTION>
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
			URL: <input type="text" name="url"><br>
				<div class="btn-wrapper">
                 <input type="hidden" name="mode3" value="add">
			     <input type="submit" name="addButton" value="�o�^" class="btn touroku" onclick="return PushAddButton()">
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