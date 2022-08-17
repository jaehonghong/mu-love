package com.mulove.vo;

import java.util.Date;

import lombok.Data;
@Data
public class BoardViewVO {
	private String img;
	private String text;
	private String nicname;
	private Date post_date;
	private int post_num;
	private int member_num;
}
