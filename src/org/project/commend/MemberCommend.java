package org.project.commend;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface MemberCommend {
	
	void excuteQueryCommend(HttpServletRequest request, HttpServletResponse response)
	throws ServerException, IOException;

}
