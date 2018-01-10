package com.molcon.phibase.api.exception;

public class CustomException extends Exception {

	private static final long serialVersionUID = 1L;
	
	private Exception e;
	
	public CustomException(Exception e) {
		this.e = e;
	}

	public Exception getE() {
		return e;
	}

	public void setE(Exception e) {
		this.e = e;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
