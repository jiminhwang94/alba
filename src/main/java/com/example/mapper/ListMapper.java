package com.example.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.example.domain.ListVO;

public interface ListMapper {
	// list = 지원목록
	// list 추가
	public int insert(ListVO service);

	// list 제거
	public int delete(@Param("company") String company, @Param("supporter") String supporter);

	public List<ListVO> getList(String company);

	public ListVO read(@Param("supporter") String supporter);

}
