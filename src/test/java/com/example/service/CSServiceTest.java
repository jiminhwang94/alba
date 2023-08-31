package com.example.service;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.domain.CSCriteria;
import com.example.domain.CSVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { com.example.config.RootConfig.class })
@Log4j
public class CSServiceTest {

	@Setter(onMethod_ = { @Autowired })
	private CSService service;

	// @Test
	public void testExist() {
		log.info(service);
		assertNotNull(service);
	}

	// @Test
	public void testRegister() {
		CSVO board = new CSVO();
		board.setS_id("wkq");
		board.setS_name("잡");
		board.setS_type("공고");
		board.setS_title("공고문의요~");
		board.setS_content("새로 작성하는 내용");

		service.sregister(board);

		log.info("생성된 게시물의 아이디 : " + board.getS_id());
	}

	// @Test
	public void testGetList() {
		service.getListWithAdminPaging(new CSCriteria(2, 10)).forEach(board -> log.info(board));
	}

	// @Test
	public void testGet() {
		log.info(service.sget(1L));
	}

	@Test
	public void testUpdate() {
		CSVO board = service.sget(4L);
		if (board == null) {
			return;
		}

		board.setS_anwser("다시 문의바랍니다");
		log.info("MODIFY RESULT: " + service.smodify(board));
	}
}
