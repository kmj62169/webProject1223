package org.project.commend;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberUpdateDo implements MemberCommend {

	@Override
	public void excuteQueryCommend(HttpServletRequest request, HttpServletResponse response)
			throws ServerException, IOException {
		System.out.println("회원수정");
		
	}

}
