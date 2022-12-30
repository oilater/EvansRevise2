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
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	//데이터 베이스 연결
	public static Connection getConnection() throws Exception {
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "test", "test1234");
		return con;
	}
	
	public String selectAll(HttpServletRequest request, HttpServletResponse response) {
		ArrayList<Applicant> list = new ArrayList<Applicant>();
		try {
			conn = getConnection();
			String sql = "select no, name, age, phone, address, instrument, career, major from applicant";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				Applicant applicant = new Applicant();
				applicant.setNo(rs.getInt(1));
				applicant.setName(rs.getNString(2));
				applicant.setAge(rs.getString(3));
				applicant.setPhone(rs.getString(4));
				applicant.setAddress(rs.getString(5));	
				applicant.setInstrument(rs.getString(6));
				applicant.setCareer(rs.getString(7));
				applicant.setMajor(rs.getString(8));

				list.add(applicant);
			}
			request.setAttribute("applylist", list);
			
			conn.close();
			ps.close();
			rs.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "applylist.jsp";
	}
	
	public String insert(HttpServletRequest request,HttpServletResponse response) {
		int applyno = Integer.parseInt(request.getParameter("applyno"));
		String applyname = request.getParameter("applyname");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String instrument = request.getParameter("instrument");
		String career = request.getParameter("career");
		int result = 0;
		
		try {
			conn = getConnection(); //db 연결
			String sql = "insert into applicant values(?,?,?,?,?,?,?)";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, applyno);
			ps.setString(2, applyname);
			ps.setString(3, phone);
			ps.setString(4, address);
			ps.setString(5, instrument);
			ps.setString(6, career);
			
			result=ps.executeUpdate();
			
			System.out.println(result);
			
			conn.close();
			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "apply.jsp";
		
	}
	
	public String nextApplyno(HttpServletRequest request,HttpServletResponse response) {
		try {
			conn = getConnection();
			String sql = "select max(apply)+1 applyno from apply";
			conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			int applyno = 0;
			
			if(rs.next()) applyno = rs.getInt(1);
			request.setAttribute("applyno", applyno);
			
			conn.close();
			ps.close();
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "apply.jsp";
	} 
	
	
}