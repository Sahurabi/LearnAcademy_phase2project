package com.AcademyPojo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ClassesDAO {

	public int insertCls(Classes sb) throws ClassNotFoundException, SQLException {
		Connection con=JdbcConnection.getDBConnection();
		String sql="insert into class values(?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1, sb.getClid());
		ps.setString(2, sb.getClname());
	    ps.setString(3, sb.getClteacher());
	    ps.setString(4, sb.getClsub());
		
		return ps.executeUpdate();
	}
	public int updateCls(Classes sb) throws ClassNotFoundException, SQLException{
		Connection con=JdbcConnection.getDBConnection();
		String sql=("update class set classname=?,classtch=?,classsub=? where classid=? ");
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,sb.getClname());
		ps.setString(2, sb.getClteacher());
		ps.setString(3, sb.getClsub());
		ps.setInt(4, sb.getClid());
		return ps.executeUpdate();
		
	}
	public int deleteCls(Classes sb) throws ClassNotFoundException, SQLException {
		Connection con=JdbcConnection.getDBConnection();
		String sql=("delete from class where classid=? ");
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1, sb.getClid());
	
		return ps.executeUpdate();
		
	}
	public List<Classes> display() throws ClassNotFoundException, SQLException{
		Connection con=JdbcConnection.getDBConnection();
		List<Classes> list=new ArrayList<Classes>();
		String sql="select * from class";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			Classes pojo=new Classes();
			pojo.setClid(rs.getInt(1));
			pojo.setClname(rs.getString(2));
			pojo.setClteacher(rs.getString(3));
			pojo.setClsub(rs.getString(4));
			list.add(pojo);
		}
		
		return list;
		
	}
}
	
	

