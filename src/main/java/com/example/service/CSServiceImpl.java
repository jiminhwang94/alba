package com.example.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.domain.CSCriteria;
import com.example.domain.CSVO;
import com.example.mapper.CSMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class CSServiceImpl implements CSService {

	private CSMapper mapper;

	@Override
	public void sregister(CSVO service) {
		log.info("register......." + service);
		mapper.sinsert(service);
	}

	@Override
	public CSVO sget(Long s_num) {
		log.info("get......" + s_num);
		return mapper.sread(s_num);
	}

	@Override
	public boolean smodify(CSVO service) {
		log.info("modify......" + service);
		return mapper.supdate(service) == 1;
	}

	/*
	 * @Override public List<CSVO> getList() { log.info("getList............");
	 * return mapper.getList(); }
	 */

	// @Override public List<CSVO> usergetList(String s_id) {
	// log.info("usergetList............"); return mapper.usergetList(s_id); }

	// @Override
	// public List<CSVO> getListWithUserPaging(@Param("s_id") String s_id,
	// CSCriteria cri) {

	// log.info("get List with criteria: " + s_id + "님의" + cri);

	// return mapper.getListWithUser(s_id, cri);
	// }

	@Override
	public List<CSVO> getListWithAdminPaging(CSCriteria cri) {
		log.info("get List with criteria: " + cri);
		return mapper.getListWithAdmin(cri);
	}

	@Override
	public int countTotal() {
		return mapper.countTotal();
	}

	@Override
	public int countUserTotal(String s_id) {
		return mapper.countUserTotal(s_id);
	}

	@Override
	public List<CSVO> getListWithUserPaging(String s_id, CSCriteria cri) {
		System.out.println(cri.getPageNum());
		return mapper.getListWithUser(s_id, cri);
	}

}
