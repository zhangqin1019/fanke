package Dao;

import java.sql.*;

import entity.*;

public class UserDao extends BaseDao{
	public User getUserByLoginNameAndPwd(String userName,String userPwd){
		Connection conn=null;
		PreparedStatement psm=null;
		ResultSet rs=null;
		User user=null;
		try {
			conn=this.getConnection();
			String sql="select * from User where userName=? and userPwd=?";
			psm=conn.prepareStatement(sql);
			psm.setString(1, userName);
			psm.setString(2, userPwd);
			rs=psm.executeQuery();
			while(rs.next())
			{
				user=new User();
				user.setUserId(rs.getString("userId"));
				user.setUserName(rs.getString("userName"));
			    user.setUserPwd(rs.getString("userPwd"));
			}
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		finally{
			this.closeAll(conn, psm, rs);
		}
		return user;
	}
	public int addUser(User user){
		int count;
		if(getUserByUserId(user.getUserId())==null)
		{
			String sql="insert into User values(?,?,?)";
			Object[] param={user.getUserId(),user.getUserName(),user.getUserPwd()};
			count=this.exceuteUpdate(sql, param);
		}
		else
		{
			count=0;
		}
		return count;
	}
	public User getUserByUserId(String userId){
		Connection conn=null;
		PreparedStatement psm=null;
		ResultSet rs=null;
		User user=null;
		try {
			conn=this.getConnection();
			String sql="select * from User where userId=?";
			psm=conn.prepareStatement(sql);
			psm.setString(1, userId);
			rs=psm.executeQuery();
			while(rs.next())
			{
				user=new User();
				user.setUserId(rs.getString("userId"));
				user.setUserName(rs.getString("userName"));
			    user.setUserPwd(rs.getString("userPwd"));
			}
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		finally{
			this.closeAll(conn, psm, rs);
		}
		return user;
	}
}
