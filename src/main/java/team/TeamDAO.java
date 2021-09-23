package team;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import mysql.db.DbConnect;

public class TeamDAO {
	DbConnect db = new DbConnect();
	
	//insert
	public void teamInsert(TeamDTO dto) {
		String sql = "insert into team (name, driver, addr, writeday) values (?,?,?,now())";
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			//바인딩
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getDriver());
			pstmt.setString(3, dto.getAddr());
			//실행
			pstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	//select
	public ArrayList<TeamDTO> getAllDatas(){
		ArrayList<TeamDTO> list = new ArrayList<TeamDTO>();
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from team order by num";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				TeamDTO dto = new TeamDTO();
				dto.setNum(rs.getString("num"));
				dto.setName(rs.getString("Name"));
				dto.setDriver(rs.getString("driver"));
				dto.setAddr(rs.getString("addr"));
				dto.setWriteday(rs.getTimestamp("writeday"));
				
				//list에 추가
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return list;
	}
	
	//delete
	public void teamDelete(String num) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		String sql = "delete from team where num=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			//바인딩
			pstmt.setString(1, num);
			
			//실행
			pstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	
	
	
	
	
	
	
}
