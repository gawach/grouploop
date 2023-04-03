package co.jp.groupLoop.entity;

public class Comment {
	private int id_comment;
	private String contents_comment;
	private int id_user;
	private int id_event;
	private int id_news;

	public int getId_comment() {
		return id_comment;
	}

	public void setId_comment(int id_comment) {
		this.id_comment = id_comment;
	}

	public String getContents_comment() {
		return contents_comment;
	}

	public void setContents_comment(String contents_comment) {
		this.contents_comment = contents_comment;
	}

	public int getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}

	public int getId_event() {
		return id_event;
	}

	public void setId_event(int id_event) {
		this.id_event = id_event;
	}

	public int getId_news() {
		return id_news;
	}

	public void setId_news(int id_news) {
		this.id_news = id_news;
	}

}
