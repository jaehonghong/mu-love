package com.mana.vo;


import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class ReservVO {
	@DateTimeFormat(pattern="yyyy/MM/dd")
	private String redate;
	private String retime;
	private String re_name;
	private String member_name;
	private int re_phone;
}