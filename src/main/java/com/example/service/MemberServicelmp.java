package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.domain.CSCriteria;
import com.example.domain.CmemberVo;
import com.example.domain.PmemberVo;
import com.example.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class MemberServicelmp implements MemberService {

	@Autowired
	private MemberMapper mapper;

	@Override
	public void cregister(CmemberVo vo) {
		log.info("register....." + vo);
		mapper.cinsert(vo);
	}

	@Override
	public CmemberVo cget(String c_id) {
		log.info("get......" + c_id);
		return mapper.cread(c_id);
	}

	@Override
	public boolean cmodify(CmemberVo vo) {
		log.info("modify......" + vo);
		return mapper.cupdate(vo) == 1;
	}

	@Override
	public boolean cremove(String c_id) {
		log.info("remove......" + c_id);
		return mapper.cdelete(c_id) == 1;
	}

	@Override
	public List<CmemberVo> cgetList(CSCriteria cri) {
		log.info("getList.........");
		return mapper.cgetList();
	}

	@Override
	public CmemberVo login(CmemberVo vo) {
		CmemberVo VO = mapper.cmemberLogin(vo);
		return mapper.cmemberLogin(VO);
	}

	@Override
	public void pregister(PmemberVo vo) {
		log.info("register....." + vo);
		mapper.pinsert(vo);
	}

	@Override
	public PmemberVo pget(String p_id) {
		log.info("get......" + p_id);
		return mapper.pread(p_id);
	}

	@Override
	public boolean pmodify(PmemberVo vo) {
		log.info("modify......" + vo);
		return mapper.pupdate(vo) == 1;
	}

	@Override
	public boolean premove(String p_id) {
		log.info("remove......" + p_id);
		return mapper.pdelete(p_id) == 1;
	}

	@Override
	public List<PmemberVo> pgetList(CSCriteria cri) {
		log.info("getList.........");
		return mapper.pgetList();
	}

	@Override
	public PmemberVo login(PmemberVo vo) {
		PmemberVo VO = mapper.pmemberLogin(vo);
		return VO;
	}

	@Override
	public List<PmemberVo> pgetList() {
		log.info("getList.........");
		return mapper.pgetList();
	}

	@Override
	public List<CmemberVo> cgetList() {
		// TODO Auto-generated method stub
		return mapper.cgetList();
	}

	@Override
	public PmemberVo psearchId(String p_name, String p_phone) {
		return mapper.psearchId(p_name, p_phone);
	}

}
