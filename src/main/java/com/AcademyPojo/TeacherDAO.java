package com.AcademyPojo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TeacherDAO {
	public int insertTea(Teacher tea) throws ClassNotFoundException, SQLException {
		Connection con=JdbcConnection.getDBConnection();
		String sql="insert into teacher values(?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1, tea.getTid());
		ps.setString(2, tea.getTname());
		return ps.executeUpdate();
	}
	public int updateTea(Teacher tea) throws ClassNotFoundException, SQLException{
		Connection con=JdbcConnection.getDBConnection();
		String sql=("update teacher set Tname=? where Tid=? ");
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,tea.getTname());
		ps.setInt(2, tea.getTid());
		return ps.executeUpdate();
	}
	public int deleteTch(Teacher tea) throws ClassNotFoundException, SQLException {
		Connection con=JdbcConnection.getDBConnection();
		String sql=("delete from teacher where Tid=? ");
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1, tea.getTid());
	
		return ps.executeUpdate();
	}
	public List<Teacher> display() throws ClassNotFoundException, SQLException{
		Connection con=JdbcConnection.getDBConnection();
		List<Teacher> list=new ArrayList<Teacher>();
		String sql="select * from teacher";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			Teacher tea=new Teacher();
			tea.setTid(rs.getInt(1));
			tea.setTname(rs.getString(2));
			list.add(tea);
		}
		
		return list;
	}
		

}
