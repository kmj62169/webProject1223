package org.project.commend;

import java.io.IOException;
import java.rmi.ServerException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.project.dao.MemberDao;

public class LoginOkDo implements MemberCommend {

	@Override
	public void excuteQueryCommend(HttpServletRequest request, HttpServletResponse response)
			throws ServerException, IOException {
		System.out.println("로그인");
		
		String userId=request.getParameter("userId");
		String userPw=request.getParameter("userPw");
		
		MemberDao dao=MemberDao.getInstance();
		
		int result=dao.LoginOkDo(userId, userPw);
		
		String forwardURL=" ";
		
		HttpSession session=request.getSession();
		
		if(result!=1) {
			System.out.println("로그인 실패");
			forwardURL="/login.jsp";
		} else {
			System.out.println("로그인 성공");
			session.setMaxInactiveInterval(60*30); 
			session.setAttribute("sessionId", userId);
			forwardURL="/loginOk.jsp";
		}
		
		request.setAttribute("forwardURL", forwardURL);
		
	}

}
