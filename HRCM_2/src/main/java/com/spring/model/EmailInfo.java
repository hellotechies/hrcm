package com.spring.model;

/*public class EmailInfo {

	private String from, to, subject, body;
	 
	public String getFrom() {
		return from;
	}
 
	public void setFrom(String from) {
		this.from = from;
	}
 
	public String getTo() {
		return to;
	}
 
	public void setTo(String to) {
		this.to = to;
	}
 
	public String getSubject() {
		return subject;
	}
 
	public void setSubject(String subject) {
		this.subject = subject;
	}
 
	public String getBody() {
		return body;
	}
 
	public void setBody(String body) {
 
		this.body = body;
	}
 
}
*/



import java.util.Date;

public class EmailInfo {

	private String firstname;
	
	private String lastname;
	private String email;
	private Integer phone;
	private String country;
	private String city;
	private String address;
	private String experience;
	private String position;
	private String message;
	private String fName;
	private byte[] resume;  
	private Date mytime;

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getPhone() {
		return phone;
	}

	public void setPhone(Integer phone) {
		this.phone = phone;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public byte[] getResume() {
		return resume;
	}

	public void setResume(byte[] resume) {
		this.resume = resume;
	}

	public Date getMytime() {
		return mytime;
	}

	public void setMytime(Date mytime) {
		this.mytime = mytime;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	
}
