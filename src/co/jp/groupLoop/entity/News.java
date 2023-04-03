package co.jp.groupLoop.entity;

public class News {
	private String title_news;
	private int real_fake_news;
	private String contents_news;
	private int id_user;

	public String getTitle_news() {
		return title_news;
	}

	public void setTitle_news(String title_news) {
		this.title_news = title_news;
	}

	public int getReal_fake_news() {
		return real_fake_news;
	}

	public void setReal_fake_news(int real_fake_news) {
		this.real_fake_news = real_fake_news;
	}

	public String getContents_news() {
		return contents_news;
	}

	public void setContents_news(String contents_news) {
		this.contents_news = contents_news;
	}

	public int getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}
}
