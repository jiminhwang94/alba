package com.example.mapper;

import java.util.List;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.domain.CSCriteria;
import com.example.domain.CSVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration("file:src/main/webapp/WEB-INF/root-context.xml") //1.xml 사용
@ContextConfiguration(classes = { com.example.config.RootConfig.class }) // 2. java 사용
@Log4j
public class CSMapperTest {

	@Setter(onMethod_ = { @Autowired })
	private CSMapper mapper;

	// @Test
	public void testGetList() {

		mapper.getListWithAdmin(new CSCriteria(1, 10)).forEach(board -> log.info(board));

		/*
		 * List list = mapper.getList();
		 * 
		 * list.forEach(board -> log.info("" + board));
		 */
	}

	// @Test
	public void testInset() {

		CSVO board = new CSVO();
		board.setS_id("wkq");
		board.setS_name("잡");
		board.setS_type("공고");
		board.setS_title("공고문의요~");
		board.setS_content("새로 작성하는 내용");

		mapper.sinsert(board);

		log.info(board);

	}

	// @Test
	public void testRead() {
		CSVO board = mapper.sread(1L);

		log.info(board);
	}

	// @Test
	public void testUpdate() {
		CSVO board = new CSVO();
		board.setS_id("wkq");
		board.setS_name("잡");
		board.setS_type("공고");
		board.setS_title("공고문의중이요~");
		board.setS_content("새로 작성하는 내용이오");

		int count = mapper.supdate(board);
		log.info("UPDATE COUNT: " + count);

	}

	// @Test
	public void testPaging() {
		CSCriteria cri = new CSCriteria();

		cri.setPageNum(1);
		cri.setAmount(10);

		List<CSVO> list = mapper.getListWithAdmin(cri);

		list.forEach(board -> log.info(board));
	}

}
