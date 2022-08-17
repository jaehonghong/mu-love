package com.mulove.vo;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {
	private int post_num;
	private int member_num;
	private String img;
	private String text;
	private Date post_date;
}
