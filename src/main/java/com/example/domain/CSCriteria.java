package com.example.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CSCriteria {

	private int pageNum;
	private int amount;

	public CSCriteria() {
		this(1, 10);
	}

	public CSCriteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
}