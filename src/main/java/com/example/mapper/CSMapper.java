package com.example.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.example.domain.CSCriteria;
import com.example.domain.CSVO;

public interface CSMapper {

	// @Select("select * from tbl_service where bno > 0")
	// public List<CSVO> getList();

	// public List<CSVO> usergetList(@Param("s_id") String s_id);

	public List<CSVO> getListWithUser(@Param("s_id") String s_id, @Param("cri") CSCriteria cri);

	public List<CSVO> getListWithAdmin(CSCriteria cri);

	public void sinsert(CSVO service);

	public CSVO sread(Long s_num);

	public int supdate(CSVO service);

	public int countTotal();

	public int countUserTotal(@Param("s_id") String s_id);

}
