package board.model;

import java.io.Serializable;

import org.apache.commons.codec.digest.DigestUtils;

public class BoardVO implements Serializable{
	private long no;
	private String title;
	private String name;
	private String content;
	private String regdate;
	private String pwd;
	private int readcount;
	
	public long getNo() {
		return no;
	}
	public void setNo(long no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content.replaceAll("\n", "<br/>");
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = DigestUtils.sha512Hex(pwd);
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	
	@Override
	public String toString() {
		return "BoardVO [no=" + no + ", title=" + title + ", name=" + name + ", content=" + content + ", regdate="
				+ regdate + ", pwd=" + pwd + ", readcount=" + readcount + "]";
	}
	
}
