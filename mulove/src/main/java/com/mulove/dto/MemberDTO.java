package com.mulove.dto;

import java.util.Date;

import lombok.Data;
@Data
public class MemberDTO {
	private int member_num;
	private String id;
	private String pass;
	private String nicname;
	private String sex;
	private int phone;
	private String memo;
	private String address;
	private Date regDate;
}
