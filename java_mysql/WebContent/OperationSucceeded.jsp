<%@ page language="java" contentType="text/html;charset=Windows-31J"%>
<html>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>��������</title>
    <link rel="stylesheet" href="style.css">
<!--     <link rel="stylesheet" href="responsive.css"> -->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

	</head>
	<body>
		<div class="top-wrapper">
		<div class="search">
		 <br>
		<!--�X�e�[�^�X��\������-->
		<h1>
		<%String status = (String) request.getAttribute("status");%>
		<%=status%>
		</h1>
		<a href="./index.jsp" class="login">[TOP�֖߂�]</a>
		<br>
		<a href="./index.jsp" class="login">[�������ʈꗗ�֖߂肽�����ǖ߂�Ȃ���A�c�O�B]</a><!--�ł��ĂȂ�  -->
		</div>


		</div>

		<br>
<footer>
      <div class="container">
        <div class="footer-right">
          <a href="./index.jsp" class="login">HOME</a>
        </div>
      </div>
    </footer>
	</body>
</html>
