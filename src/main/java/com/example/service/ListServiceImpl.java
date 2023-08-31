package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.domain.ListVO;
import com.example.mapper.ListMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class ListServiceImpl implements ListService {

	@Autowired
	private ListMapper mapper;

	@Override
	public void register(ListVO service) {
		mapper.insert(service);
	}

	@Override
	public boolean remove(String company, String supporter) {
		return mapper.delete(company, supporter) == 1;
	}

	@Override
	public List<ListVO> getCompanyList(String company) {
		return mapper.getList(company);
	}

	@Override
	public ListVO get(String supporter) {
		return mapper.read(supporter);
	}

}
