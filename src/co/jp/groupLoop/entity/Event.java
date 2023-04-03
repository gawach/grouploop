package co.jp.groupLoop.entity;

public class Event {
	private int id_event;
	private String title_event;
	private int category_event;
	private int max_participant_event;
	private String contents_event;
	private String created_at_event;
	private String updated_at_event;
	private int id_user;

	//categoryテーブル
	private String name_category;

	//userテーブル
	private String name_user;

	public String getName_category() {
		return name_category;
	}

	public void setName_category(String name_category) {
		this.name_category = name_category;
	}

	public String getName_user() {
		return name_user;
	}

	public void setName_user(String name_user) {
		this.name_user = name_user;
	}

	public int getId_event() {
		return id_event;
	}

	public String getCreated_at_event() {
		return created_at_event;
	}

	public void setCreated_at_event(String created_at_event) {
		this.created_at_event = created_at_event;
	}

	public String getUpdated_at_event() {
		return updated_at_event;
	}

	public void setUpdated_at_event(String updated_at_event) {
		this.updated_at_event = updated_at_event;
	}

	public void setId_event(int id_event) {
		this.id_event = id_event;
	}

	public String getTitle_event() {
		return title_event;
	}

	public void setTitle_event(String title_event) {
		this.title_event = title_event;
	}

	public int getCategory_event() {
		return category_event;
	}

	public void setCategory_event(int category_event) {
		this.category_event = category_event;
	}

	public int getMax_participant_event() {
		return max_participant_event;
	}

	public void setMax_participant_event(int max_participant_event) {
		this.max_participant_event = max_participant_event;
	}

	public String getContents_event() {
		return contents_event;
	}

	public void setContents_event(String contents_event) {
		this.contents_event = contents_event;
	}

	public int getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}

}
