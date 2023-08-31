package com.example.service;

import java.util.List;

import com.example.domain.CSCriteria;
import com.example.domain.CmemberVo;
import com.example.domain.PmemberVo;

public interface MemberService {
	public void cregister(CmemberVo vo);

	public CmemberVo cget(String c_id);

	public boolean cmodify(CmemberVo vo);

	public boolean cremove(String c_id);

	public List<CmemberVo> cgetList();

	public List<CmemberVo> cgetList(CSCriteria cri);

	public CmemberVo login(CmemberVo vo);

	public void pregister(PmemberVo vo);

	public PmemberVo pget(String p_id);

	public boolean pmodify(PmemberVo vo);

	public boolean premove(String p_id);

	public List<PmemberVo> pgetList(CSCriteria cri);

	public PmemberVo login(PmemberVo vo);

	public List<PmemberVo> pgetList();
	
	public PmemberVo psearchId(String p_name, String p_phone);

}
