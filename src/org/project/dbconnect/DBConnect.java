package org.project.dbconnect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
	public static Connection getConnection() {
		
		Connection conn=null;
		
		String driver="oracle.jdbc.driver.OracleDriver";
		String user="system";
		String password="1234";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		
	try {
		//1.드라이버 찾기
		Class.forName(driver);
		System.out.println("드라이버 성공!");
		
		//2.DB연동
		conn=DriverManager.getConnection(url, user, password);
		System.out.println("DB 성공!");
	} catch(ClassNotFoundException e) {
		e.printStackTrace();
		System.out.println("드라이버 실패!!");
	} catch(SQLException e) {
		e.printStackTrace();
		System.out.println("DB 실패!!");
	}
		return conn;
		
		
		
		
	}
	
}
