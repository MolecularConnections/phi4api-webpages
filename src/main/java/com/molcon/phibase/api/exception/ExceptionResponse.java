package com.molcon.phibase.api.exception;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component
public class ExceptionResponse implements Serializable {

	private static final long serialVersionUID = 1L;

	private int code;
	
	private String message;
	
	public ExceptionResponse() {
	
	}
	
	public ExceptionResponse(int code, String message) {
		this.code = code;
		this.message = message;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}	
}
