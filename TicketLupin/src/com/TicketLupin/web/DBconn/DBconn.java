package com.TicketLupin.web.DBconn;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconn {

	
	
	Connection conn =null;
   //占쏙옙占쏙옙 占쏙옙占쏙옙
   String coninfo ="jdbc:oracle:thin:@127.0.0.1:1521:xe";
   String idinfo ="TicketLupin";
   String pwdinfo ="1234";
   
   public Connection getConnection() {
      try {
         //占쏙옙占쏙옙譴占쏙옙占쏙옙占� OrcleDriver占쏙옙 찾占승댐옙
         Class.forName("oracle.jdbc.driver.OracleDriver");
         //占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占싼댐옙
         conn= DriverManager.getConnection(coninfo, idinfo, pwdinfo);
               
         } catch (Exception e) {
            e.printStackTrace();
         }
         return conn;
   }
	/*
	
	Connection conn = null;
	String coninfo = "jdbc:mysql://localhost:3306/TicketLupin";
	String idinfo ="TicketLupin";
	String pwdinfo ="1234";
	
	public Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			System.out.println("after forName");
			conn = DriverManager.getConnection(coninfo, "root", "s!1018810");
			System.out.println("DBms connection success");
			System.out.println("DB load success");
		} catch (Exception e) {
			System.out.println("DB load fail " + e.toString());
		}
		return conn;
	}
	
	*/
}
