package session.test;

import java.io.Serializable;

public class Human implements Serializable{
	private String user_id;
	private String user_name;
	private int birth_year;
	private int level;
	private int connect_count;
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public int getBirth_year() {
		return birth_year;
	}
	public void setBirth_year(int birth_year) {
		this.birth_year = birth_year;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public int getConnect_count() {
		return connect_count;
	}
	public void setConnect_count(int connect_count) {
		this.connect_count = connect_count;
	}
	
	@Override
	public String toString() {
		return "Human [user_id=" + user_id + ", user_name=" + user_name + ", birth_year=" + birth_year + ", level="
				+ level + ", connect_count=" + connect_count + "]";
	}
	
	
}
