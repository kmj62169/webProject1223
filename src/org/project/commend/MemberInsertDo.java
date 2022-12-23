package org.project.commend;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.project.dao.MemberDao;

public class MemberInsertDo implements MemberCommend{

	@Override
	public void excuteQueryCommend(HttpServletRequest request, HttpServletResponse response)
			throws ServerException, IOException {
		System.out.println("회원가입");
		
		String userId=request.getParameter("userId");
		String userPw=request.getParameter("userPw");
		String gender=request.getParameter("gender");
		String[] hobbysArr=request.getParameterValues("hobbys");
		String hobbys="";
		if(hobbysArr!=null) {
			for(String hobby:hobbysArr) {
				hobbys+=hobby+"";		
			}
		}
		String city=request.getParameter("city");
		String memo=request.getParameter("memo");
		
		MemberDao dao=MemberDao.getInstance();
		int result=dao.MemberInsertDo(userId, userPw, gender, hobbys, city, memo);
		
		String forwardURL="";
		
		if(result!=1) {
			System.out.println("회원가입 실패");
			forwardURL="/join.jsp";
		} else {
			System.out.println("회원가입 성공");
			forwardURL="/login.jsp";
		}
		
		request.setAttribute("forwardURL", forwardURL);
		
	}
	
	

}
