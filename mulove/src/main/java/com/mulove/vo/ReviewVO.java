package com.mulove.vo;

import java.util.Date;

import lombok.Data;
@Data
public class ReviewVO {
	private int re_num;
	private int board_num;
	private int member_num;
	private String text;
	private Date redate;
	private String nicname;
}
