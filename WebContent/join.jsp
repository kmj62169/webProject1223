<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join</title>
	<link rel="stylesheet" href="css/join.css" media="all" />
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
		<div class="join">
			<div class="join-con">
			 <div class="join-form">
          <form action="memberInsert.do" method="POST" id="joinForm">
          <table>
            <tr>
              <th colspan="2">회원가입</th>
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
            <tr>
              <td><label for="gender">성별</label></td>
              <td>
                <input type="radio" name="gender" class="gender" value="남자" checked> 남 
                <input type="radio" name="gender" class="gender" value="여자"> 여 
              </td>
            </tr>
            <tr>
            <td><label for="hobbys">취미</label></td>
              <td> 
              <input type="checkbox" name="hobbys" class="hobbys" value="등산"> 등산
              <input type="checkbox" name="hobbys" class="hobbys" value="영화"> 영화
              <input type="checkbox" name="hobbys" class="hobbys" value="게임"> 게임
              <input type="checkbox" name="hobbys" class="hobbys" value="여행"> 여행 
            </td>
          </tr>
          <tr>
            <td><label for="city">출신고향</label></td>
            <td>
                <select name="city" id="city" class="city">
                <option value="" selected>::고향선택::</option>
                <option value="서울">서울</option>
                <option value="부산">부산</option>
                <option value="대전">대전</option> 
                <option value="춘천">춘천</option> 
                <option value="의정부">의정부</option> 
              </select>
              </td>
            </tr>
            <tr>
              <td colspan="2">
                <label for="memo">자기소개</label>
              </td>
            </tr>
            <tr>
              <td colspan="2">
              <textarea name="memo" id="memo" cols="30" rows="10"></textarea>
             </td> 
            </tr>
            <tr class="lastTr">
              <td colspan="2">
                <input type="reset" value="초기화">
                <input type="submit" value="회원가입실행">
              </td>
            </tr>
          </table>
        </form>
			</div>
		</div>
	</div>	
	<div class="footer">
		<div class="footer-con">FOOTER</div>
	</div>
</div>

</body>
</html>