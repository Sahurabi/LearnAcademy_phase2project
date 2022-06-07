package com.AcademyPojo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StudentDAO {
	
	public int insertStu(Student sb) throws ClassNotFoundException, SQLException {
		Connection con=JdbcConnection.getDBConnection();
		String sql="insert into students values(?,?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1, sb.getId());
		ps.setString(2, sb.getName());
	    ps.setString(3, sb.getDob());
	    ps.setString(4, sb.getAddress());
	    ps.setString(5, sb.getPhone());
	    ps.setString(6, sb.getClasses());
		
		return ps.executeUpdate();
	}
	public int updateStu(Student stu) throws ClassNotFoundException, SQLException {
		Connection con=JdbcConnection.getDBConnection();
		String sql=("update students set name=?,dob=?,address=?,phone=?,Classes=? where id=? ");
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1, stu.getId());
		ps.setString(2, stu.getName());
	    ps.setString(3, stu.getDob());
	    ps.setString(4, stu.getAddress());
	    ps.setString(5, stu.getPhone());
	    ps.setString(6, stu.getClasses());
		
		return ps.executeUpdate();
	}
	public int deleteStd(Student stu) throws ClassNotFoundException, SQLException {
		Connection con=JdbcConnection.getDBConnection();
		String sql=("delete from students where id=? ");
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1, stu.getId());
	
		return ps.executeUpdate();
	}
	public List<Student> display() throws ClassNotFoundException, SQLException{
		Connection con=JdbcConnection.getDBConnection();
		List<Student> list=new ArrayList<Student>();
		String sql="select * from students";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			Student stu =new Student();
			stu.getId();
			stu.setName(rs.getString(2));
			stu.setDob(rs.getString(3));
			stu.setAddress(rs.getString(4));
			stu.setPhone(rs.getString(5));
			list.add(stu);
		}
		
		return list;
	}
	

}
