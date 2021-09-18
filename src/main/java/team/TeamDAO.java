package team;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import oracle.db.DbConnect;

public class TeamDAO {
	DbConnect db = new DbConnect();
	
	//insert
	public void teamInsert(TeamDTO dto) {
		String sql = "insert into team values (seq_jsp.nextval, ?,?,?,current_date)";
		Connection conn = db.getLocalOracle();
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			//���ε�
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getDriver());
			pstmt.setString(3, dto.getAddr());
			//����
			pstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	
	
}
