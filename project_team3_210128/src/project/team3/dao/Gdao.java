package project.team3.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import project.team3.DriverDB;
import project.team3.dto.Goods;
import project.team3.dto.User;

public class Gdao {
	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	PreparedStatement pstmt_insert = null;
	ResultSet rs_insert = null;
	
//상품 등록	
public void gInsert(Goods g) throws SQLException, ClassNotFoundException {
		
		System.out.println("gInsert 메서드 실행");
		
		DriverDB db = new DriverDB();
		Connection conn = db.driverDbcon();
		pstmt = conn.prepareStatement("select max(CAST(substring(g_code,7) AS DECIMAL)) as maxcol from tb_goods");
		
		rs = pstmt.executeQuery();
		
		int max = 0;
		String tempCode = "goods_";
		String g_code = "goods_1";
		if(rs.next()){
			max = rs.getInt(1);
			System.out.println(max + "<-- max 1");
			max = max + 1;
			System.out.println(max + "<-- max 2");
			g_code = tempCode + max;
		}
		System.out.println(g_code + "<-- g_code");
		
		pstmt_insert = conn.prepareStatement(
		"INSERT INTO tb_goods VALUES (?, ?, ?, ?, ?, ?, ?, ?, now(), now())");
		pstmt_insert.setString(1, g_code);
		pstmt_insert.setString(2, g.getU_id());
		pstmt_insert.setString(3, g.getG_name());
		pstmt_insert.setString(4, g.getG_cate());
		pstmt_insert.setString(5, g.getG_price());
		pstmt_insert.setString(6, g.getG_discount());
		pstmt_insert.setString(7, g.getG_color());
		pstmt_insert.setString(8, g.getG_detail());
		
		pstmt_insert.executeUpdate();
		
		rs.close();
		pstmt.close();
		conn.close();
	}
}
