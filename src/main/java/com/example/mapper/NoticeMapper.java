package com.example.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.example.domain.NoticeVO;

public interface NoticeMapper {
	// notice = 공고
	// notice 추가
	public void insert(NoticeVO notice);

	// notice 수정
	public int update(NoticeVO notice);

	// notice 제거
	public int delete(@Param("company") String company);

	public List<NoticeVO> getNotice();

	// 지역 , 업종 , ~~~~~~~~~~~~~
	public NoticeVO read(@Param("company") String company);
	
	// area 별
	public List<NoticeVO> getAreaList(String area); 
	
	// age 별
	public List<NoticeVO> getAgeList(String age); 
	
	// datee 별 
	public List<NoticeVO> getDateeList(String datee); 
	
	//conn 별
	public List<NoticeVO> getConnList(String conn); 
	
	//by preferential employment = 우대사항별 <참고
//	public List<NoticeVO> getPreferList(String prefer); 
	
}
