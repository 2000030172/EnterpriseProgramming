package com.ui;
import javax.faces.bean.ManagedBean;
import javax.validation.constraints.Size;
@ManagedBean(name = "user", eager = true)
public class UserData 
{
	@Size(min = 1)
	String email;
	String password;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
