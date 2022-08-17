package com.mulove.vo;

import java.util.Date;


import lombok.Data;
@Data
public class MemberVO {
	private int member_num;
	private String id;
	private String pass;
	private String nicname;
	private String sex;
	private int phone;
	private String img;
	private String memo;
	private String address;
	private Date regDate;
	
}