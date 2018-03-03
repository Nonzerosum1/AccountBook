package com.mfx.Entities;

import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class Books {
	private int id;
	private String name;
    private String phoneNum;
    private float money;
    private String type=null;
    private String date;
    private String weight;
    public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
    public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public float getMoney() {
		return money;
	}
	public void setMoney(float money) {
		this.money = money;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
/*public static void main(String[] args){
	Books books=new Books();
	Date date=new Date();
	DateFormat mediumDateFormat = DateFormat.getDateTimeInstance
       		(DateFormat.MEDIUM,DateFormat.MEDIUM); 
	System.out.println(mediumDateFormat.format(date));
	
	
}*/

}
