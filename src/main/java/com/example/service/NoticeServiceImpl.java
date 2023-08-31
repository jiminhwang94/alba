package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.domain.NoticeVO;
import com.example.mapper.NoticeMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeMapper mapper;

	@Override
	public void register(NoticeVO notice) {

		mapper.insert(notice);
	}

	@Override
	public List<NoticeVO> getCompanyList() {
		return mapper.getNotice();
	}

	@Override
	public NoticeVO get(String company) {
		// TODO Auto-generated method stub
		return mapper.read(company);
	}

	@Override
	public void modify(NoticeVO notice) {
		mapper.update(notice);
	}

	@Override
	public boolean remove(String company) {
		return mapper.delete(company) == 1;
	}

}
