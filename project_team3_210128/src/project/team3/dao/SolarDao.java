package project.team3.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import project.team3.DriverDB;
import project.team3.dto.SolarData;

public class SolarDao {
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	
	//그래프 연간조회 가로축 2020년 2021년
	//그래프 월간조회 선택 -> 연도 >>> 가로축 1월~12월  /// SELECT MONTH(s.data_time), SUM(s.seoul) FROM tb_solar_data AS s GROUP BY MONTH(s.data_time);
	//그래프 일간조회 선택 -> 연도 + 월 >>> 가로축 1일~마지막일  /// SELECT DATE(s.data_time), SUM(s.seoul) FROM tb_solar_data AS s GROUP BY DATE(s.data_time);
	//일간 상세조회 -> 선택 : 일 >>> 가로축 0시~24시 25개 /// SELECT * FROM tb_solar_data AS s WHERE s.data_time BETWEEN '2020-01-01' AND '2020-01-02';
	
	//쿼리를 jsp에서 만들어서 호출하면 됨
	public ArrayList<int[]> solarGraphSearch (String queryString) throws ClassNotFoundException, SQLException{
		System.out.println("solarGraphSearch 메서드 실행");
		ArrayList<int[]> arrayData = new ArrayList<int[]>();
		int[] dataArr = new int[17];
		SolarData sd = new SolarData();
		DriverDB db = new DriverDB();
		Connection conn = db.driverDbcon();
		pstmt = conn.prepareStatement(queryString);
		System.out.println(pstmt + " <<< pstmt");
		rs = pstmt.executeQuery();
		while(rs.next()) {
			System.out.println("rs.next() 실행");
			System.out.println(rs.getString("seoul") != null);
			if(rs.getString("seoul") != null) {sd.setSeoul(rs.getString("seoul"));}else {sd.setSeoul("0");}
			if(rs.getString("busan") != null) {sd.setBusan(rs.getString("busan"));}else {sd.setBusan("0");}
			if(rs.getString("deagu") != null) {sd.setDeagu(rs.getString("deagu"));}else {sd.setDeagu("0");}
			if(rs.getString("incheon") != null) {sd.setIncheon(rs.getString("incheon"));}else {sd.setIncheon("0");}
			if(rs.getString("gwangju") != null) {sd.setGwangju(rs.getString("gwangju"));}else {sd.setGwangju("0");}
			if(rs.getString("deajeon") != null) {sd.setDeajeon(rs.getString("deajeon"));}else {sd.setDeajeon("0");}
			if(rs.getString("ulsan_gyeongju") != null) {sd.setUlsan_gyeongju(rs.getString("ulsan_gyeongju"));}else {sd.setUlsan_gyeongju("0");}
			if(rs.getString("sejong_cheongju") != null) {sd.setSejong_cheongju(rs.getString("sejong_cheongju"));}else {sd.setSejong_cheongju("0");}
			if(rs.getString("gyeonggi_suwon") != null) {sd.setGyeonggi_suwon(rs.getString("gyeonggi_suwon"));}else {sd.setGyeonggi_suwon("0");}
			if(rs.getString("gangwon_wonju") != null) {sd.setGangwon_wonju(rs.getString("gangwon_wonju"));}else {sd.setGangwon_wonju("0");}
			if(rs.getString("chungbuk_chupunglyeong") != null) {sd.setChungbuk_chupunglyeong(rs.getString("chungbuk_chupunglyeong"));}else {sd.setChungbuk_chupunglyeong("0");}
			if(rs.getString("chungnam_seosan") != null) {sd.setChungnam_seosan(rs.getString("chungnam_seosan"));}else {sd.setChungnam_seosan("0");}
			if(rs.getString("jeonbuk_jeonju") != null) {sd.setJeonbuk_jeonju(rs.getString("jeonbuk_jeonju"));}else {sd.setJeonbuk_jeonju("0");}
			if(rs.getString("jeonnam_mokpo") != null) {sd.setJeonnam_mokpo(rs.getString("jeonnam_mokpo"));}else {sd.setJeonnam_mokpo("0");}
			if(rs.getString("gyeongbug_anbong") != null) {sd.setGyeongbug_anbong(rs.getString("gyeongbug_anbong"));}else {sd.setGyeongbug_anbong("0");}
			if(rs.getString("gyeongnam_kimhea") != null) {sd.setGyeongnam_kimhea(rs.getString("gyeongnam_kimhea"));}else {sd.setGyeongnam_kimhea("0");}
			if(rs.getString("jeju") != null) {sd.setJeju(rs.getString("jeju"));}else {sd.setJeju("0");}
			System.out.println("rs.next() 뒷부분");
			dataArr = dataArray(sd);
			arrayData.add(dataArr);
			System.out.println(arrayData);
		}
		System.out.println("리턴전");
		return arrayData;
	}
	
	
	public int[] solarMapSearch(String queryString) throws ClassNotFoundException, SQLException {
		System.out.println("solarMapSearch 메서드 실행");
		System.out.println(queryString);
		int[] dataArr = new int[20];
		SolarData sd = new SolarData();
		DriverDB db = new DriverDB();
		Connection conn = db.driverDbcon();
		pstmt = conn.prepareStatement(queryString);
		System.out.println(pstmt + " <<< pstmt");
		rs = pstmt.executeQuery();
		
		if(rs.next() && rs.getString("seoul") != null){
			System.out.println("rs.next() 실행 ");
			sd.setSeoul(rs.getString("seoul"));
			sd.setBusan(rs.getString("busan"));
			sd.setDeagu(rs.getString("deagu"));
			sd.setIncheon(rs.getString("incheon"));
			sd.setGwangju(rs.getString("gwangju"));
			sd.setDeajeon(rs.getString("deajeon"));
			sd.setUlsan_gyeongju(rs.getString("ulsan_gyeongju"));
			sd.setSejong_cheongju(rs.getString("sejong_cheongju"));
			sd.setGyeonggi_suwon(rs.getString("gyeonggi_suwon"));
			sd.setGangwon_wonju(rs.getString("gangwon_wonju"));
			sd.setChungbuk_chupunglyeong(rs.getString("chungbuk_chupunglyeong"));
			sd.setChungnam_seosan(rs.getString("chungnam_seosan"));
			sd.setJeonbuk_jeonju(rs.getString("jeonbuk_jeonju"));
			sd.setJeonnam_mokpo(rs.getString("jeonnam_mokpo"));
			sd.setGyeongbug_anbong(rs.getString("gyeongbug_anbong"));
			sd.setGyeongnam_kimhea(rs.getString("gyeongnam_kimhea"));
			sd.setJeju(rs.getString("jeju"));
			
			dataArr = dataArray(sd);
		}else {
			for(int i=0; i<17; i++) {
				dataArr[i] = 0;
			}
		}
		System.out.println(dataArr[0] + " <<< solarMap() dataArr[0]");
		System.out.println(dataArr[13] + " <<< solarMap() dataArr[13]");
		
		return dataArr;
	}
	
	
	public int[] solarMap() throws ClassNotFoundException, SQLException {
		int[] dataArr = new int[20];
		
		System.out.println("solarMap 메서드 실행");
		SolarData sd = new SolarData();
		DriverDB db = new DriverDB();
		Connection conn = db.driverDbcon();
		pstmt = conn.prepareStatement("SELECT * FROM tb_solar_data WHERE sid = '710'");
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			System.out.println("rs.next() 실행 ");
			sd.setSid(rs.getString("sid"));
			sd.setData_time(rs.getString("data_time"));
			sd.setSeoul(rs.getString("seoul"));
			sd.setBusan(rs.getString("busan"));
			sd.setDeagu(rs.getString("deagu"));
			sd.setIncheon(rs.getString("incheon"));
			sd.setGwangju(rs.getString("gwangju"));
			sd.setDeajeon(rs.getString("deajeon"));
			sd.setUlsan_gyeongju(rs.getString("ulsan_gyeongju"));
			sd.setSejong_cheongju(rs.getString("sejong_cheongju"));
			sd.setGyeonggi_suwon(rs.getString("gyeonggi_suwon"));
			sd.setGangwon_wonju(rs.getString("gangwon_wonju"));
			sd.setChungbuk_chupunglyeong(rs.getString("chungbuk_chupunglyeong"));
			sd.setChungnam_seosan(rs.getString("chungnam_seosan"));
			sd.setJeonbuk_jeonju(rs.getString("jeonbuk_jeonju"));
			sd.setJeonnam_mokpo(rs.getString("jeonnam_mokpo"));
			sd.setGyeongbug_anbong(rs.getString("gyeongbug_anbong"));
			sd.setGyeongnam_kimhea(rs.getString("gyeongnam_kimhea"));
			sd.setJeju(rs.getString("jeju"));
			
			dataArr = dataArray(sd);
		}
		System.out.println(dataArr[0] + " <<< solarMap() dataArr[0]");
		
		return dataArr;
	}
	
	
	public int[] dataArray(SolarData sd) {
		
		int[] dataArr = new int[20];
		
		dataArr[0] = (int) Math.round(Double.parseDouble(sd.getSeoul())*10000/36);
		dataArr[1] = (int) Math.round(Double.parseDouble(sd.getBusan())*10000/36);
		dataArr[2] = (int) Math.round(Double.parseDouble(sd.getDeagu())*10000/36);
		dataArr[3] = (int) Math.round(Double.parseDouble(sd.getIncheon())*10000/36);
		dataArr[4] = (int) Math.round(Double.parseDouble(sd.getGwangju())*10000/36);
		dataArr[5] = (int) Math.round(Double.parseDouble(sd.getDeajeon())*10000/36);
		dataArr[6] = (int) Math.round(Double.parseDouble(sd.getUlsan_gyeongju())*10000/36);
		dataArr[7] = (int) Math.round(Double.parseDouble(sd.getSejong_cheongju())*10000/36);
		dataArr[8] = (int) Math.round(Double.parseDouble(sd.getGyeonggi_suwon())*10000/36);
		dataArr[9] = (int) Math.round(Double.parseDouble(sd.getGangwon_wonju())*10000/36);
		dataArr[10] = (int) Math.round(Double.parseDouble(sd.getChungbuk_chupunglyeong())*10000/36);
		dataArr[11] = (int) Math.round(Double.parseDouble(sd.getChungnam_seosan())*10000/36);
		dataArr[12] = (int) Math.round(Double.parseDouble(sd.getJeonbuk_jeonju())*10000/36);
		dataArr[13] = (int) Math.round(Double.parseDouble(sd.getJeonnam_mokpo())*10000/36);
		dataArr[14] = (int) Math.round(Double.parseDouble(sd.getGyeongbug_anbong())*10000/36);
		dataArr[15] = (int) Math.round(Double.parseDouble(sd.getGyeongnam_kimhea())*10000/36);
		dataArr[16] = (int) Math.round(Double.parseDouble(sd.getJeju())*10000/36);
		
		System.out.println(dataArr[0] + " <<< dataArray() dataArr[0]");
		
		return dataArr;
	}
	
	
	
}
