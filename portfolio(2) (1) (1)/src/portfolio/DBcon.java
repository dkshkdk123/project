package portfolio;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBcon {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs;
	
	static String user = "system";
	static String pass = "1234";
	static String url = "jdbc:oracle:thin:@localhost:1521/xe";
	
	public static Connection getConnection() throws Exception{
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn = DriverManager.getConnection(url, user, pass);
		return conn;
	}
}
