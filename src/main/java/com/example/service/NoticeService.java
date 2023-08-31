package com.example.service;

import java.util.List;

import com.example.domain.NoticeVO;

public interface NoticeService {

	public void register(NoticeVO notice);

	public List<NoticeVO> getCompanyList();

	public NoticeVO get(String company);

	public void modify(NoticeVO notice);

	public boolean remove(String company);

}
