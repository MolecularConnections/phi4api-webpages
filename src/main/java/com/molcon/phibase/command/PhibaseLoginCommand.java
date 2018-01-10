package com.molcon.phibase.command;

import java.io.Serializable;

import org.springframework.stereotype.Component;
import org.springmodules.validation.bean.conf.loader.annotation.handler.NotBlank;

@SuppressWarnings("serial")
@Component
public class PhibaseLoginCommand implements Serializable{

	@NotBlank
	private String userName;
	@NotBlank
	private String password;

	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}

}
