package com.TicketLupin.web.service;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.TicketLupin.web.DBconn.DBconn;

import domain.SearchCriteria;

public class EventDao {
	
	private	Connection conn;
	private PreparedStatement pstmt;
	private int midx;
	
	public EventDao() {
		DBconn dbconn = new DBconn();
		this.conn = dbconn.getConnection();
	}
	
	public int insertEvent(String etitle, String econtent, String efiles, String estart, String eend, String ethumbnail, String ecategory) {
		
		int value = 0;
		 
		
		String sql ="insert into event(eidx, etitle, econtent, midx, efiles, estart, eend, ethumbnail, ecategory)" + 
				"values(eidx_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, etitle);
			pstmt.setString(2, econtent);
			pstmt.setInt(3, midx);
			pstmt.setString(4, efiles);
			pstmt.setString(5, estart);
			pstmt.setString(6, eend);
			pstmt.setString(7, ethumbnail);
			pstmt.setString(8, ecategory);
			value = pstmt.executeUpdate();
			
			
		}catch(SQLException e) {
			e.printStackTrace();
			
		}finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		System.out.println("value"+value);
		return value;
	}
	
	public ArrayList<EventVo> eventSelectAll(SearchCriteria scri){
		
		ArrayList<EventVo> alist = new ArrayList<EventVo>();
		
		String sql =  "select B.* from (select rownum as rnum, A.* from  "
				+ "(select * from event where edelyn='N' and ecategory='list' and etitle like ?" 
				+ "order by eidx desc) A where rownum <= ?)B where B.rnum >= ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%"+scri.getKeyword()+"%");
			pstmt.setInt(2, scri.getPage()*9);
			pstmt.setInt(3, (scri.getPage()-1)*9+1);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				EventVo ev = new EventVo();
				ev.setEidx(rs.getInt("eidx"));
				ev.setEtitle(rs.getString("etitle"));
				ev.setEstart(rs.getString("estart"));
				ev.setEend(rs.getString("eend"));
				ev.setEfiles(rs.getString("efiles"));
				ev.setEthumbnail(rs.getString("ethumbnail"));
				alist.add(ev);
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return alist;
	}
	
	public int eventTotal(String keyword) {
		int cnt = 0;
		ResultSet rs = null;
		
		String sql = "select count(*) as cnt  from event where edelyn='N' and etitle like ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%"+keyword+"%");
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				cnt = rs.getInt("cnt");
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
	}
	
	public EventVo eventSelectOne(int eidx) {
		
		EventVo ev = null;
		ResultSet rs = null;
		
		String sql = "select * from event where eidx = ?";
		
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, eidx);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				ev = new EventVo();
				ev.setEtitle(rs.getString("etitle"));
				ev.setEcontent(rs.getString("econtent"));
				ev.setEidx(rs.getInt("eidx"));
				ev.setEfiles(rs.getString("efiles"));
				ev.setEstart(rs.getString("estart"));
				ev.setEend(rs.getString("eend"));
				ev.setEthumbnail(rs.getString("ethumbnail"));
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		return ev;
	}
	
	public boolean EventModify(int eidx, String etitle, String econtent, String estart, String eend, String efiles, String ethumbnail, String ecategory) {
		
		boolean result = false;
		String sql = "update event set etitle=?, econtent=?, estart=?, eend=?, efiles=?, ethumbnail=?, ecategory=?"
				+ "where eidx=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, etitle);
			pstmt.setString(2, econtent);
			pstmt.setString(3, estart);
			pstmt.setString(4, eend);
			pstmt.setString(5, efiles);
			pstmt.setString(6, ethumbnail);
			pstmt.setInt(7, eidx);
			pstmt.setString(8, ecategory);
			
			int flag = pstmt.executeUpdate();
			if(flag > 0 ) {
				result = true;
			}
		}catch(SQLException e) { 
			e.printStackTrace();
		}finally {
			try {
				
				pstmt.close();
				conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	

	public int EventDelete(int eidx) {
		int result = 0;
		
		String sql ="update event set edelyn = 'Y' where eidx = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, eidx);
			ResultSet rs = pstmt.executeQuery();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	

}
