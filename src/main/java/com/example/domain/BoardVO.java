package com.example.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {
	private String b_id;
	private Long bno;
	private String company;
	private String datee;
	private String satis;
	private Date regdate;
	private Date updateDate;
}
