package project.team3;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DriverDB {
	
	
	public Connection driverDbcon() throws ClassNotFoundException, SQLException {
		
		Class.forName("com.mysql.jdbc.Driver");

		String jdbcDriver = "jdbc:mysql://localhost:3306/dbproject_3team?" + "useUnicode=true&characterEncoding=utf-8";
		String dbUser = "id3team";
		String dbPass = "pw3team";
		Connection conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);	
		return conn;
	}
}
