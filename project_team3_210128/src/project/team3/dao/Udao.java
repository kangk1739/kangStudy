package project.team3.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import project.team3.DriverDB;
import project.team3.dto.User;

public class Udao {
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	
	//update
	public int userUpdate(User u) throws SQLException, ClassNotFoundException {
		
		System.out.println("UserInsert 메서드 실행");
		
		DriverDB db = new DriverDB();
		Connection conn = db.driverDbcon();
		pstmt = conn.prepareStatement("UPDATE tb_user SET u_pw=?, u_name=?, u_phone=?, u_email=?, u_addr=?, u_birth=?, u_regdate_re=NOW() WHERE u_id=?");
		
		System.out.println(u.getU_id() + " <<< u.getU_id()");
		System.out.println(u.getU_pw() + " <<< u.getU_pw()");
		System.out.println(u.getU_name() + " <<< u.getU_name()");
		System.out.println(u.getU_phone() + " <<< u.getU_phone()");
		System.out.println(u.getU_email() + " <<< u.getU_email()");
		System.out.println(u.getU_addr() + " <<< u.getU_addr()");
		System.out.println(u.getU_birth() + " <<< u.getU_birth()");
		
		pstmt.setString(1, u.getU_pw());
		pstmt.setString(2, u.getU_name());
		pstmt.setString(3, u.getU_phone());
		pstmt.setString(4, u.getU_email());
		pstmt.setString(5, u.getU_addr());
		pstmt.setString(6, u.getU_birth());
		pstmt.setString(7, u.getU_id());
		
		int rs = pstmt.executeUpdate();
		
		System.out.println("쿼리 실행 후");
		
		return rs;
	}
	
	
	
	//memberList 검색시 조건에 맞는 검색
	public ArrayList<User> UserSearch(String queryString) throws ClassNotFoundException, SQLException{
		
		DriverDB db = new DriverDB();
		Connection conn = db.driverDbcon();
		pstmt = conn.prepareStatement(queryString);
		rs = pstmt.executeQuery();
		ArrayList<User> userArr = new ArrayList<User>();
		int rsCount = 0;
		User u = new User();
		while(rs.next()) {
			u=new User();
			u.setU_id(rs.getString("u_id"));
			u.setU_pw(rs.getString("u_pw"));
			u.setU_name(rs.getString("u_name"));
			u.setU_level(rs.getString("u_level"));
			u.setU_addr(rs.getString("u_addr"));
			u.setU_phone(rs.getString("u_phone"));
			u.setU_email(rs.getString("u_email"));
			u.setU_birth(rs.getString("u_birth"));
			u.setU_regdate(rs.getString("u_regdate"));
			u.setU_regdate_re(rs.getString("u_regdate_re"));
			userArr.add(u);
			rsCount += 1;
		}
		System.out.println(rsCount + " <<< rsCount // 출력 줄 갯수");
		return userArr;
	}
	
	//insert
	public int UserInsert(User u) throws SQLException, ClassNotFoundException {
		
		System.out.println("UserInsert 메서드 실행");
		
		DriverDB db = new DriverDB();
		Connection conn = db.driverDbcon();
		pstmt = conn.prepareStatement("INSERT INTO tb_user VALUES (?,?,'회원',?,?,?,?,?,NOW(),NOW());");
		
		System.out.println(u.getU_id() + " <<< u.getU_id()");
		System.out.println(u.getU_pw() + " <<< u.getU_pw()");
		System.out.println(u.getU_name() + " <<< u.getU_name()");
		System.out.println(u.getU_phone() + " <<< u.getU_phone()");
		System.out.println(u.getU_email() + " <<< u.getU_email()");
		System.out.println(u.getU_addr() + " <<< u.getU_addr()");
		System.out.println(u.getU_birth() + " <<< u.getU_birth()");
		
		pstmt.setString(1, u.getU_id());
		pstmt.setString(2, u.getU_pw());
		pstmt.setString(3, u.getU_name());
		pstmt.setString(4, u.getU_phone());
		pstmt.setString(5, u.getU_email());
		pstmt.setString(6, u.getU_addr());
		pstmt.setString(7, u.getU_birth());
		
		int rs = pstmt.executeUpdate();
		
		System.out.println("쿼리 실행 후");
		
		return rs;
	}
	
	
	//login
	public User uLoginCheck(String in_id,String in_pw) throws ClassNotFoundException, SQLException {
		
		System.out.println(" uLoginCheck 메서드 실행");
		System.out.println(in_id + " <<< in_id");
		System.out.println(in_pw + " <<< in_pw");
		
		DriverDB db = new DriverDB();
		Connection conn = db.driverDbcon();
		pstmt = conn.prepareStatement("SELECT * FROM tb_user WHERE u_id = '"+ in_id +"';");
		rs = pstmt.executeQuery();
		User u = new User();
		
		if(rs.next()) {
			if(in_pw.equals(rs.getString("u_pw"))){
				u.setU_id(rs.getString("u_id"));
				u.setU_addr(rs.getString("u_addr"));
				u.setU_birth(rs.getString("u_birth"));
				u.setU_email(rs.getString("u_email"));
				u.setU_phone(rs.getString("u_phone"));
				u.setU_level(rs.getString("u_level"));
				u.setU_name(rs.getString("u_name"));
			}else {
				return null;
			}
		}
		return u;
	}
}
