package com.example.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.domain.Resume;
import com.example.mapper.ResumeMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class ResumeServiceImpl implements ResumeService {
	private ResumeMapper mapper;

	@Override
	public void rregister(Resume resume) {
		mapper.rinsert(resume);

	}

	@Override
	public Resume rget(String r_id) {
		log.info("get......" + r_id);
		return mapper.rread(r_id);
	}

	@Override
	public boolean rmodify(Resume resume) {
		// TODO Auto-generated method stub
		return mapper.rupdate(resume) == 1;
	}

	@Override
	public boolean rremove(String r_id) {
		// TODO Auto-generated method stub
		return mapper.rdelete(r_id) == 1;
	}

	@Override
	public List<Resume> rgetList() {
		return mapper.rgetList();
		// TODO Auto-generated method stub
	}

}
