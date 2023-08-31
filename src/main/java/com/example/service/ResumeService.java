package com.example.service;

import java.util.List;

import com.example.domain.Resume;

public interface ResumeService {
	public void rregister(Resume resume);

	public Resume rget(String r_id);

	public boolean rmodify(Resume resume);

	public boolean rremove(String r_id);

	public List<Resume> rgetList();
//	public List<Resume> getList(Criteria cri);
//	public int getTotal(Criteria cri);
}
