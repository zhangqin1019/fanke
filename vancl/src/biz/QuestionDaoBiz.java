package biz;

import java.util.List;

import entity.Question;
import Dao.*;

public class QuestionDaoBiz {
	QuestionDao questionDao=new QuestionDao();
	public List<Question> showQuestion(){
		return questionDao.showQuestion();
	}
	public int getQuestionCategoryIdByQuestionCategoryName(String questionCategoryName){
		return questionDao.getQuestionCategoryIdByQuestionCategoryName(questionCategoryName);
	}
	public boolean addQuestion (int questionCategoryId,String questionContent){
		int count=questionDao.addQuestion(questionCategoryId, questionContent);
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
}
