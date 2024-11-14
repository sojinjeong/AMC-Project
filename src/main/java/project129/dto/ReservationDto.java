package project129.dto;

import java.sql.Timestamp;

public class ReservationDto {
	
	private int id;
	private String hid;
	private String hname;
	private int hphonenum;
	private String hdate;
	private String hroomname;
	private int hnum;
	private String eid;
	private String ename;
	private int ephonenum;
	private int e_num;
	private Timestamp edate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getHid() {
		return hid;
	}
	public void setHid(String hid) {
		this.hid = hid;
	}
	public String getHname() {
		return hname;
	}
	public void setHname(String hname) {
		this.hname = hname;
	}
	public int getHphonenum() {
		return hphonenum;
	}
	public void setHphonenum(int hphonenum) {
		this.hphonenum = hphonenum;
	}
	public String getHdate() {
		return hdate;
	}
	public void setHdate(String hdate) {
		this.hdate = hdate;
	}
	public String getHroomname() {
		return hroomname;
	}
	public void setHroomname(String hroomname) {
		this.hroomname = hroomname;
	}
	public int getHnum() {
		return hnum;
	}
	public void setHnum(int hnum) {
		this.hnum = hnum;
	}
	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public int getEphonenum() {
		return ephonenum;
	}
	public void setEphonenum(int ephonenum) {
		this.ephonenum = ephonenum;
	}
	public int getE_num() {
		return e_num;
	}
	public void setE_num(int e_num) {
		this.e_num = e_num;
	}
	public Timestamp getEdate() {
		return edate;
	}
	public void setEdate(Timestamp edate) {
		this.edate = edate;
	}
	@Override
	public String toString() {
		return "ReservationDto [id=" + id + ", hid=" + hid + ", hname=" + hname + ", hphonenum=" + hphonenum
				+ ", hdate=" + hdate + ", hroomname=" + hroomname + ", hnum=" + hnum + ", eid=" + eid + ", ename="
				+ ename + ", ephonenum=" + ephonenum + ", e_num=" + e_num + ", edate=" + edate + "]";
	}
	
	
	
}
