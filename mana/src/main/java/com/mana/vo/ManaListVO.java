package com.mana.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ManaListVO {
	private String name;
	private String text;
	private int sale;
	private int phone;
	private int manage_num;
	private int client_num;
	private int member_num;
	private Date sale_date;
	private String member_name;
	private String memo;
}