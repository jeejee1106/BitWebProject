package ajaxboard;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import mysql.db.DbConnect;

public class AjaxBoardDAO {
	DbConnect db = new DbConnect();
	
	//insert
	public void insertBoard(AjaxBoardDTO dto) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		String sql = "insert into ajaxboard (writer, subject, content, avata, writeday) values (?,?,?,?, now())";
		
		try {
			pstmt = conn.prepareStatement(sql);
			//���ε�
			pstmt.setString(1, dto.getWriter());
			pstmt.setString(2, dto.getSubject());
			pstmt.setString(3, dto.getContent());
			pstmt.setString(4, dto.getAvata());
			//����
			pstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	//���
	public ArrayList<AjaxBoardDTO> getAllDatas(){
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from ajaxboard order by num desc";
		
		ArrayList<AjaxBoardDTO> list = new ArrayList<AjaxBoardDTO>();
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				AjaxBoardDTO dto = new AjaxBoardDTO();
				dto.setNum(rs.getString("num"));
				dto.setWriter(rs.getString("writer"));
				dto.setSubject(rs.getString("subject"));
				dto.setContent(rs.getString("content"));
				dto.setWriteday(rs.getTimestamp("writeday"));
				//list�� �߰�
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}
		return list;
	}
	
	//num�� �ش��ϴ� ��� ������(DTO) ��ȯ
	public AjaxBoardDTO getData(String num){
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from ajaxboard where num=?";
		AjaxBoardDTO dto = new AjaxBoardDTO();
		
		try {
			pstmt = conn.prepareStatement(sql);
			//���ε�
			pstmt.setString(1, num);
			//����
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto.setNum(rs.getString("num"));
				dto.setWriter(rs.getString("writer"));
				dto.setSubject(rs.getString("subject"));
				dto.setAvata(rs.getString("avata"));
				dto.setContent(rs.getString("content"));
				dto.setWriteday(rs.getTimestamp("writeday"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}
		return dto;
	}
	
	//delete �޼��屸��
	   public void deleteBoard(String num) {
	      Connection conn = db.getConnection();
	      PreparedStatement pstmt = null;
	      String sql = "delete from ajaxboard where num=?";
	      
	      try {
	         pstmt = conn.prepareStatement(sql);
	         //���ε�
	         pstmt.setString(1, num);   
	         pstmt.execute();
	      } catch (Exception e) {
	         // TODO: handle exception
	      }finally {
	         db.dbClose(pstmt, conn);
	      }
	   }
	   
	   //update ���� �޼���
	   public void updateBoard(AjaxBoardDTO dto) {
	      Connection conn = db.getConnection();
	      PreparedStatement pstmt = null;
	      String sql = "update ajaxboard set writer=?,avata=?, subject=?, content=? where num=?";
	      
	      try {
	         pstmt = conn.prepareStatement(sql);
	         
	         //���ε�
	         pstmt.setString(1, dto.getWriter());
	         pstmt.setString(2, dto.getAvata());
	         pstmt.setString(3, dto.getSubject());
	         pstmt.setString(4, dto.getContent());
	         pstmt.setString(5, dto.getNum());
	         pstmt.execute();
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }finally {
	         db.dbClose(pstmt, conn);
	      }
	   }
	
}
