package com.example.service;

import java.util.List;

import com.example.domain.ListVO;

public interface ListService {

	public void register(ListVO service);

	public boolean remove(String supporter, String company);

	public List<ListVO> getCompanyList(String company);

	public ListVO get(String supporter);

	// Resume페이지로 이동
}
