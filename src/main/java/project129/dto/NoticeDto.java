package project129.dto;

import java.sql.Timestamp;

public class NoticeDto {
	private int id;
	private int refid;
	private int depth;
	private int renum;
	private String title;
	private String content;
	private String userid;
	private Timestamp wdate;
	private int no_num;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getRefid() {
		return refid;
	}
	public void setRefid(int refid) {
		this.refid = refid;
	}
	public int getDepth() {
		return depth;
	}
	public void setDepth(int depth) {
		this.depth = depth;
	}
	public int getRenum() {
		return renum;
	}
	public void setRenum(int renum) {
		this.renum = renum;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public Timestamp getWdate() {
		return wdate;
	}
	public void setWdate(Timestamp wdate) {
		this.wdate = wdate;
	}
	public int getNo_num() {
		return no_num;
	}
	public void setNo_num(int no_num) {
		this.no_num = no_num;
	}
	@Override
	public String toString() {
		return "NoticeDto [id=" + id + ", refid=" + refid + ", depth=" + depth + ", renum=" + renum + ", title=" + title
				+ ", content=" + content + ", userid=" + userid + ", wdate=" + wdate + ", no_num=" + no_num + "]";
	}
	
	
	
	
}
