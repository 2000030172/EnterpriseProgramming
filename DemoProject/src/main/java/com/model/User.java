package com.model;

import javax.faces.bean.ManagedBean;


@ManagedBean(name = "user", eager = true)
public class User 
{
	String right;
	String about;
	public String getRight() {
		return right;
	}
	public void setRight(String right) {
		this.right = right;
	}
	public String getAbout() {
		return about;
	}
	public void setAbout(String about) {
		this.about = about;
	}
	String username;
	String password;
	String email;
	String edit;
	public String getEdit() {
		return edit;
	}
	public void setEdit(String edit) {
		this.edit = edit;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	String name;
	String date;
	String phone;
	String address;
	String state;
	String gender;
	String cname;
	String cemail;
	public String getKname() {
		return kname;
	}
	public void setKname(String kname) {
		this.kname = kname;
	}
	public String getKemail() {
		return kemail;
	}
	public void setKemail(String kemail) {
		this.kemail = kemail;
	}
	public String getKsub() {
		return ksub;
	}
	public void setKsub(String ksub) {
		this.ksub = ksub;
	}
	public String getKmsg() {
		return kmsg;
	}
	public void setKmsg(String kmsg) {
		this.kmsg = kmsg;
	}
	String ruser;
	String puser;
	String count;
	public String getPemail() {
		return pemail;
	}
	public void setPemail(String pemail) {
		this.pemail = pemail;
	}
	String pemail;
	String kname;
	String kemail;
	String ksub;
	String kmsg;
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}
	public String getPuser() {
		return puser;
	}
	public void setPuser(String puser) {
		this.puser = puser;
	}
	public String getRuser() {
		return ruser;
	}
	public void setRuser(String ruser) {
		this.ruser = ruser;
	}
	String csub;
	String cmsg;
	String rname;
	String remail;
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public String getRemail() {
		return remail;
	}
	public void setRemail(String remail) {
		this.remail = remail;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCemail() {
		return cemail;
	}
	public void setCemail(String cemail) {
		this.cemail = cemail;
	}
	public String getCsub() {
		return csub;
	}
	public void setCsub(String csub) {
		this.csub = csub;
	}
	public String getCmsg() {
		return cmsg;
	}
	public void setCmsg(String cmsg) {
		this.cmsg = cmsg;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}