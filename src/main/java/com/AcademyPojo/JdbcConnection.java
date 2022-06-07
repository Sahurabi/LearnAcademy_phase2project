package com.AcademyPojo;
	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.SQLException;

	public class JdbcConnection {
		public static final String DB_URL = "jdbc:mysql://localhost:3306/learnAcademy";
		public static final String UN = "root";
		public static final String PWD = "123456";
		public static Connection con = null;
		
		public static Connection getDBConnection() throws SQLException, ClassNotFoundException
		{
			Class.forName("com.mysql.jdbc.Driver");
			 return con = DriverManager.getConnection(DB_URL, UN, PWD);

       }

		
}
