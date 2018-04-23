package entity;

public class Question {
	private int questionId;
	private int questionCategoryId;
	private String questionContent;
	public int getQuestionId() {
		return questionId;
	}
	public void setQuestionId(int questionId) {
		this.questionId = questionId;
	}
	public int getQuestionCategoryId() {
		return questionCategoryId;
	}
	public void setQuestionCategoryId(int questionCategoryId) {
		this.questionCategoryId = questionCategoryId;
	}
	public String getQuestionContent() {
		return questionContent;
	}
	public void setQuestionContent(String questionContent) {
		this.questionContent = questionContent;
	}
	public Question(){}
	public Question(int questionId,int questionCategoryId,String questionContent){
		this.questionId=questionId;
		this.questionCategoryId=questionCategoryId;
		this.questionContent=questionContent;
	}
}
