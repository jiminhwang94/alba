package com.example.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.example.domain.CSCriteria;
import com.example.domain.CmemberVo;
import com.example.domain.PmemberVo;

public interface MemberMapper {
	public List<CmemberVo> cgetList();

	public List<CmemberVo> cgetListWithPaging(CSCriteria cri);

	public void cinsert(CmemberVo vo);

	public CmemberVo cread(String c_id);

	public int cdelete(String c_id);

	public int cupdate(CmemberVo vo);

	public CmemberVo cmemberLogin(CmemberVo vo);

	public List<PmemberVo> pgetList();

	public List<PmemberVo> pgetListWithPaging(CSCriteria cri);

	public void pinsert(PmemberVo vo);

	public PmemberVo pread(String p_id);

	public int pdelete(String p_id);

	public int pupdate(PmemberVo vo);

	public PmemberVo pmemberLogin(PmemberVo vo);
	
	public PmemberVo psearchId(@Param("p_name") String p_name, @Param("p_phone") String p_phone);

}
