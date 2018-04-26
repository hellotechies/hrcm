package com.spring.model;

import java.util.Date;

public class Feedback {

	private String fullname, email;
	private Date date;
	private int tech_marks, Com_marks, attitude_marks;
	private  String status;
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getTech_marks() {
		return tech_marks;
	}
	public void setTech_marks(int tech_marks) {
		this.tech_marks = tech_marks;
	}
	public int getCom_marks() {
		return Com_marks;
	}
	public void setCom_marks(int com_marks) {
		Com_marks = com_marks;
	}
	public int getAttitude_marks() {
		return attitude_marks;
	}
	public void setAttitude_marks(int attitude_marks) {
		this.attitude_marks = attitude_marks;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	


}

	