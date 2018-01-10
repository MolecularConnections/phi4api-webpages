package com.molcon.phibase.bean;

import java.io.Serializable;
import java.util.Date;

public class SpotlightBean implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private int id;

	private String title;
	
	private String description;
	
	private byte[] image;
	
	private String imageStr;
	
	private String date; 

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	public String getImageStr() {
		return imageStr;
	}

	public void setImageStr(String imageStr) {
		this.imageStr = imageStr;
	}
	
	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "SpotlightBean [title=" + title + ", description=" + description + " ]";
	}
	
	
	
}
