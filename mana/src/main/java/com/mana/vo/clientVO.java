package com.mana.vo;

import java.util.Date;

import lombok.Data;

@Data
public class clientVO {
	private int client_num;
	private int phone;
	private String name;
	private String client_sex;
	private Date birth;
}