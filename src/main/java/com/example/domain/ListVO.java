package com.example.domain;

import java.util.List;

import lombok.Data;

@Data
public class ListVO {

	private String company;
	private String supporter;
	private String appdate;

	private List<Resume> relist;
	private List<PmemberVo> pmemlist;
}
