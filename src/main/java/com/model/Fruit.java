package com.model;

public class Fruit {

	private String name;
	private int price;
	private String desc;
	private String url;
	

	public Fruit() {
		// TODO Auto-generated constructor stub
	}


	public Fruit(String name, int price, String desc, String url) {
		super();
		this.name = name;
		this.price = price;
		this.desc = desc;
		this.url = url;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public String getDesc() {
		return desc;
	}


	public void setDesc(String desc) {
		this.desc = desc;
	}


	public String getUrl() {
		return url;
	}


	public void setUrl(String url) {
		this.url = url;
	}


	@Override
	public String toString() {
		return "Fruit [name=" + name + ", price=" + price + ", desc=" + desc + ", url=" + url + "]";
	}
	
	
	
	
}
