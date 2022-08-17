package com.mana.vo;



import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;


@Data
public class ReservInsertVO {
	@DateTimeFormat(pattern="24HH/mm")
	private String retime;
	private String re_name;
	private int member_num;
	private int re_phone;
	@DateTimeFormat(pattern="yyyy/MM/dd")
	private String redate;
}
