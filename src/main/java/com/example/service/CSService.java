package com.example.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.example.domain.CSCriteria;
import com.example.domain.CSVO;

public interface CSService {

	public void sregister(CSVO service);

	public CSVO sget(Long s_num);

	public boolean smodify(CSVO service);

	// public List<CSVO> getList();

	// public List<CSVO> usergetList(String s_id);

	// public List<CSVO> getListWithUserPaging(@Param("s_id") String s_id,
	// CSCriteria cri);

	public int countTotal();

	public int countUserTotal(@Param("s_id") String s_id);

	public List<CSVO> getListWithAdminPaging(CSCriteria cri);

	public List<CSVO> getListWithUserPaging(@Param("s_id") String s_id, @Param("cri") CSCriteria cri);

}
