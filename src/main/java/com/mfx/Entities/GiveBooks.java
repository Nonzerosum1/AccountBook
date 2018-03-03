package com.mfx.Entities;

public class GiveBooks {
	private int id;
	private String name;
    private String phoneNum;
    private float money;
    private String type=null;
    private String giveTime;
    private float weight;
    public float getWeight() {
		return weight;
	}
	public void setWeight(float weight) {
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
	public String getGiveTime() {
		return giveTime;
	}
	public void setGiveTime(String giveTime) {
		this.giveTime = giveTime;
	}
	
}
