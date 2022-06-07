package com.AcademyPojo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

//CRUD-C -creation of data -insert , R -retrival -select, U-update -update, D-delete -delete
public class SubjectDAO {
	
	public int insertSub(SubjectPojo sb) throws ClassNotFoundException, SQLException {
		Connection con=JdbcConnection.getDBConnection();
		String sql="insert into Subject values(?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1, sb.getSubid());
		ps.setString(2,sb.getSubname());
		return ps.executeUpdate();
		
	}
	public int updateSub(SubjectPojo sb) throws ClassNotFoundException, SQLException{
		Connection con=JdbcConnection.getDBConnection();
		String sql=("update subject set Subname=? where Subid=? ");
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,sb.getSubname());
		ps.setInt(2, sb.getSubid());
		return ps.executeUpdate();
	}
	public int DeleteSub(SubjectPojo sb) throws ClassNotFoundException, SQLException{
		Connection con=JdbcConnection.getDBConnection();	
		String sql=("Delete from subject  where Subid=? ");
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1,sb.getSubid() );
		return ps.executeUpdate();
	}
	public List<SubjectPojo> display() throws ClassNotFoundException, SQLException{
		Connection con=JdbcConnection.getDBConnection();	
		List<SubjectPojo> list=new ArrayList<SubjectPojo>();
		String sql="select * from subject";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			SubjectPojo sb=new SubjectPojo();
			sb.setSubid(rs.getInt(1));
			sb.setSubname(rs.getString(2));
			list.add(sb);	
		}
		return list;
	}
}

	