package com.example.mapper;

import java.util.List;

import com.example.domain.Resume;

public interface ResumeMapper {
	public void rinsert(Resume resume);

	public Resume rread(String r_id);

	public int rdelete(String r_id);

	public int rupdate(Resume resume);

	public void rinsertSelectKey(Resume resume);

	public List<Resume> rgetList();
}
