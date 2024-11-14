package project129.dto;

public class MemberDto {
	private int id;
	private String mname;
	private String mid;
	private String mpass;
	private String memail;
	private String mphonenum;
	private String mpettype;
	private String mpetname;
	private String mpetage;
	private int mrole;
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMpass() {
		return mpass;
	}
	public void setMpass(String mpass) {
		this.mpass = mpass;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public String getMphonenum() {
		return mphonenum;
	}
	public void setMphonenum(String mphonenum) {
		this.mphonenum = mphonenum;
	}
	public String getMpettype() {
		return mpettype;
	}
	public void setMpettype(String mpettype) {
		this.mpettype = mpettype;
	}
	public String getMpetname() {
		return mpetname;
	}
	public void setMpetname(String mpetname) {
		this.mpetname = mpetname;
	}
	public String getMpetage() {
		return mpetage;
	}
	public void setMpetage(String mpetage) {
		this.mpetage = mpetage;
	}
	public int getMrole() {
		return mrole;
	}
	public void setMrole(int mrole) {
		this.mrole = mrole;
	}
	
	@Override
	public String toString() {
		return "MemberDto [id=" + id + ", mname=" + mname + ", mid=" + mid + ", mpass=" + mpass + ", memail=" + memail
				+ ", mphonenum=" + mphonenum + ", mpettype=" + mpettype + ", mpetname=" + mpetname + ", mpetage="
				+ mpetage + ", mrole=" + mrole + "]";
	}
	
	public MemberDto() {}
	
	public MemberDto(int id, String mname, String mid, String mpass, String memail, String mphonenum, String[] mpettypes,
			String mpetname, String mpetage, int mrole) {
		super();
		
		if(mpettypes !=null) {
			for(String mpettype :mpettypes) {}
		}
		
		
		this.id = id;
		this.mname = mname;
		this.mid = mid;
		this.mpass = mpass;
		this.memail = memail;
		this.mphonenum = mphonenum;
		this.mpettype = mpettype;
		this.mpetname = mpetname;
		this.mpetage = mpetage;
		this.mrole = mrole;
	}
	
	
}
