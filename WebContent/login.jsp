<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
	<link rel="stylesheet" href="css/login.css" media="all" />
</head>
<body>
	<div id="wrap">
		<div class="header">
			<div class="nav">
				<h1 class="logo">
				<a href="index.do">LOGO</a>
				</h1>
				<div class="gnb">
					<ul>
						<li><a href="index.do">HOME</a></li>
						<li><a href="#">게시판</a></li>
						<li><a href="#">INFO</a></li>
						<li><a href="joinView.do">회원가입</a></li>
						<li><a href="loginView.do">로그인</a></li>
					</ul>
				</div>
			</div>
		</div>	
	<div class="container">
		<div class="login">
			<div class="login-con">
			 <div class="login-form">
			 <form action="loginOk.do" method="POST" id="joinForm">
          <table>
            <tr>
              <th colspan="2">로그인</th>
            </tr>
            <tr>
              <td><label for="userId">아이디</label></td>
              <td><input type="text" name="userId" id="userId">
              </td>
            </tr>
            <tr>
              <td><label for="userPw">비밀번호</label></td>
              <td><input type="password" name="userPw" id="userPw">
              </td>
            </tr>
			 <tr class="lastTr">
              <td colspan="2">
                <input type="reset" value="초기화">
                <input type="submit" value="로그인">
              </td>
            </tr>
			</table>
			</form>
			</div>
			</div>

		</div>
	</div>	
	<div class="footer">
		<div class="footer-con">FOOTER</div>
	</div>
</div>

</body>
</html>