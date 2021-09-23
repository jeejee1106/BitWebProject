package mysql.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DbConnect {
	static final String MYSQLDRIVER = "com.mysql.jdbc.Driver";
	
	static final String MYSQL_URL = "jdbc:mysql://localhost:3306/test?serverTimezone=Asia/Seoul"; 

	//생성자
	public DbConnect() {
		try {
			Class.forName(MYSQLDRIVER);
		} catch (ClassNotFoundException e) {
			System.out.println("mysql 드라이버 실패" + e.getMessage());
			e.printStackTrace();
		}
	}

	public Connection getConnection() {
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(MYSQL_URL, "root", "minjee1106");
		} catch (SQLException e) {
			System.out.println("mysql 연결 실패" + e.getMessage());
			e.printStackTrace();
		}
		return conn;
	}
	
	public void dbClose(ResultSet rs, Statement stmt, Connection conn) {
		try {
			if(rs!=null) rs.close();
			if(stmt!=null) stmt.close();
			if(conn!=null) conn.close();
		} catch(SQLException e) {
			
		}
	}
	
	
	public void dbClose(ResultSet rs, PreparedStatement pstmt, Connection conn) {
		try {
			if(rs!=null) rs.close();
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
		} catch(SQLException e) {
			
		}
	}
	
	public void dbClose(Statement stmt, Connection conn) {
		try {
			if(stmt!=null) stmt.close();
			if(conn!=null) conn.close();
		} catch(SQLException e) {
			
		}
	}
	
	public void dbClose(PreparedStatement pstmt, Connection conn) {
		try {
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
		} catch(SQLException e) {
			
		}
	}
	
	
}
