package Dao;

import java.sql.*;
import java.util.*;

import entity.*;

public class QuestionDao extends BaseDao{
	public List<Question> showQuestion(){
		List<Question> questionList=new ArrayList<Question>();
		Connection conn=null;
		PreparedStatement psm=null;
		ResultSet rs=null;
		try {
			conn=this.getConnection();
			String sql="select * from question";
			psm=conn.prepareStatement(sql);
			rs=psm.executeQuery();
			while(rs.next())
			{
				Question question=new Question();
				question.setQuestionId(rs.getInt("questionId"));
				question.setQuestionCategoryId(rs.getInt("questionCategoryId"));
				question.setQuestionContent(rs.getString("questionContent"));
				questionList.add(question);
			}
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		finally{
			this.closeAll(conn, psm, rs);
		}
		return questionList;
		
	}
	public int getQuestionCategoryIdByQuestionCategoryName(String questionCategoryName){
		int questionCategoryId=0;
		Connection conn=null;
		PreparedStatement psm=null;
		ResultSet rs=null;
		try {
			conn=this.getConnection();
			String sql="select questionCategoryId from questionCategory where questionCategoryName=?";
			psm=conn.prepareStatement(sql);
			psm.setString(1, questionCategoryName);
			rs=psm.executeQuery();
			while(rs.next())
			{
				questionCategoryId=rs.getInt("questionCategoryId");
			}
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		finally{
			this.closeAll(conn, psm, rs);
		}
		return questionCategoryId;
	}
	public int addQuestion (int questionCategoryId,String questionContent){
		String sql="insert into question values(default,?,?)";
		Object[] param={questionCategoryId,questionContent};
		return this.exceuteUpdate(sql, param);
	}
}
