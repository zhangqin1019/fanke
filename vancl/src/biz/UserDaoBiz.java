package biz;

import entity.*;
import Dao.*;

public class UserDaoBiz {
	UserDao users=new UserDao();
	public User getUserByLoginNameAndPwd(String userName,String userPwd){
		return users.getUserByLoginNameAndPwd(userName, userPwd);
	}
	public boolean addUser(User user){
		int count=users.addUser(user);
		boolean isInsert;
		if(count>0)
		{
			isInsert=true;
		}
		else
		{
			isInsert=false;
		}
		return isInsert;
	}
	public User getUserByUserId(String userId){
		return this.getUserByUserId(userId);
	}
}
