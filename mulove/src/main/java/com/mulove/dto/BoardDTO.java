package com.mulove.dto;

import java.util.Date;

import lombok.Data;
@Data
public class BoardDTO {
	private int post_num;
	private int member_num;
	private String text;
	private Date post_date;
}
