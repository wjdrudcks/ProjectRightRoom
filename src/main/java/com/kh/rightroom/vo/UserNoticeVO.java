package com.kh.rightroom.vo;

import java.sql.Date;

public class UserNoticeVO {
	private int n_u_no;
	private String n_u_title;
	private String n_u_content;
	private Date n_u_date;
	private Date n_u_final_date;
	
	public int getN_u_no() {
		return n_u_no;
	}
	public void setN_u_no(int n_u_no) {
		this.n_u_no = n_u_no;
	}
	public String getN_u_title() {
		return n_u_title;
	}
	public void setN_u_title(String n_u_title) {
		this.n_u_title = n_u_title;
	}
	public String getN_u_content() {
		return n_u_content;
	}
	public void setN_u_content(String n_u_content) {
		this.n_u_content = n_u_content;
	}
	public Date getN_u_date() {
		return n_u_date;
	}
	public void setN_u_date(Date n_u_date) {
		this.n_u_date = n_u_date;
	}
	public Date getN_u_final_date() {
		return n_u_final_date;
	}
	public void setN_u_final_date(Date n_u_final_date) {
		this.n_u_final_date = n_u_final_date;
	}
	

}
