package project129.dto;

import java.sql.Timestamp;

public class ReservationCheckDto {
	private int id;
	private String mid;
	private String mname;
	private String type;
	private Timestamp date;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	
	@Override
	public String toString() {
		return "ReservationCheckDto [id=" + id + ", mid=" + mid + ", mname=" + mname + ", type=" + type + ", date="
				+ date + "]";
	}
	
	
	
	
}
