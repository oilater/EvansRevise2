package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.Applicant;

public class EvansDAO {

	final String JDBC_DRIVER = "oracle.jdbc.driver.OracleDriver";
	final String JDBC_URL = "jdbc:oracle:thin:@localhost:1521:xe";

	public Connection open() {
		Connection conn = null;
		try {
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(JDBC_URL, "test", "test1234");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

	public ArrayList<Applicant> getList() throws Exception {
		Connection conn = open();
		ArrayList<Applicant> list = new ArrayList<>();

		String sql = "select no, name, age, phone, address, instrument, career, major from applicant";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();

		try (conn; pstmt; rs) {
			while (rs.next()) {
				Applicant applicant = new Applicant();
				applicant.setNo(rs.getInt(1));
				applicant.setName(rs.getString(2));
				applicant.setAge(rs.getString(3));
				applicant.setPhone(rs.getString(4));
				applicant.setAddress(rs.getString(5));
				applicant.setInstrument(rs.getString(6));
				applicant.setCareer(rs.getString(7));
				applicant.setMajor(rs.getString(8));
				list.add(applicant);
			}
			return list;
		}

	}
	
	public void insert(Applicant applicant) throws Exception {
		Connection conn = open();
		
		String sql = "insert into applicant values(SEQ_applicant.nextval, ?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		try(conn; pstmt) {
			pstmt.setString(1, applicant.getName());
			pstmt.setString(2, applicant.getAge());
			pstmt.setString(3, applicant.getPhone());
			pstmt.setString(4, applicant.getAddress());
			pstmt.setString(5, applicant.getInstrument());
			pstmt.setString(6, applicant.getCareer());
			pstmt.setString(7, applicant.getMajor());
			pstmt.executeUpdate(); pstmt.executeUpdate();
		}
	}
	
	public void update(Applicant applicant) throws Exception {
		Connection conn = open();
		String sql = "update applicant set name=?, age=?, phone=?, address=?, instrument=?, career=?, major=? where no = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		try (conn; pstmt) {
			pstmt.setString(1, applicant.getName());
			pstmt.setString(2, applicant.getAge());
			pstmt.setString(3, applicant.getPhone());
			pstmt.setString(4, applicant.getAddress());
			pstmt.setString(5, applicant.getInstrument());
			pstmt.setString(6, applicant.getCareer());
			pstmt.setString(7, applicant.getMajor());
			
			if (pstmt.executeUpdate() != 1) {
				throw new Exception("DB에러");
			}
		}
		
	}
	
	public void delete(int no) throws Exception {
		Connection conn = open();
		
		String sql = "delete from applicant where no=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		try(conn; pstmt) {
			pstmt.setInt(1, no);
			
			if(pstmt.executeUpdate() !=1) {
				throw new Exception("DB에러");
			}
		}
	}

	

}