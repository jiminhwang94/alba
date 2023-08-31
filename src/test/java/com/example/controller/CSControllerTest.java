package com.example.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(classes = { com.example.config.RootConfig.class, com.example.config.ServletConfig.class })
@Log4j
public class CSControllerTest {

	@Setter(onMethod_ = { @Autowired })
	private WebApplicationContext ctx;

	private MockMvc mockMvc;

	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}

	@Test // 입력
	public void testRegister() throws Exception {

		for (int i = 0; i < 100; i++) {
			String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/notice/n_register")
					.param("title", "은행원 모집중" + i).param("company", "농협" + i).param("day", "평일" + i)
					.param("datee", i + "개월").param("area", "부산" + i).param("job", "은행 업무" + i).param("age", "만19세" + i)
					.param("conn", "월급 250만원" + i).param("time", "9시~18신" + i).param("sex", "무관" + i)
					.param("many", "00명" + i).param("ability", "무관" + i).param("treatment", "무관" + i)
					.param("employment", "정규직" + i).param("welfare", "4대보험" + i).param("address", "부산시 어쩌구 저쩌구" + i))
					.andReturn().getModelAndView().getViewName();
			log.info(resultPage);
			/*
			 * if (i < 25) { String resultPage = mockMvc.perform(
			 * MockMvcRequestBuilders.post("/service/s_register").param("s_id",
			 * "wkq").param("s_name", "잡") .param("s_type", "공고").param("s_title", "공고 문의" +
			 * i).param("s_content", "공고 문의함돠" + i))
			 * .andReturn().getModelAndView().getViewName(); log.info(resultPage); } else if
			 * (i < 50) { String resultPage = mockMvc.perform(
			 * MockMvcRequestBuilders.post("/service/s_register").param("s_id",
			 * "wlq").param("s_name", "집") .param("s_type", "알바").param("s_title", "알바 문의" +
			 * i).param("s_content", "알바 문의함돠" + i))
			 * .andReturn().getModelAndView().getViewName(); log.info(resultPage); } else if
			 * (i < 50) { String resultPage = mockMvc.perform(
			 * MockMvcRequestBuilders.post("/service/s_register").param("s_id",
			 * "wnq").param("s_name", "줍") .param("s_type", "후기").param("s_title", "후기 문의" +
			 * i).param("s_content", "후기 문의함돠" + i))
			 * .andReturn().getModelAndView().getViewName(); log.info(resultPage); } else {
			 * String resultPage = mockMvc.perform(
			 * MockMvcRequestBuilders.post("/service/s_register").param("s_id",
			 * "wjq").param("s_name", "접") .param("s_type", "회원").param("s_title", "회원 문의" +
			 * i).param("s_content", "회원 문의함돠" + i))
			 * .andReturn().getModelAndView().getViewName(); log.info(resultPage); }
			 */
		}
	}

	// @Test // 조회
	public void tetGet() throws Exception {

		log.info(mockMvc.perform(
				MockMvcRequestBuilders.get("/service/s_get").param("s_id", "fpdlswj").param("s_title", "공고 관련 문의"))
				.andReturn().getModelAndView().getModelMap());

	}

	// @Test // 수정
	public void testModify() throws Exception {
		String resultPage = mockMvc
				.perform(MockMvcRequestBuilders.post("/board/modify").param("bno", "1").param("title", "수정된 테스트 새글 제목")
						.param("content", "수정된 테스트 새글 내용").param("writer", "user00"))
				.andReturn().getModelAndView().getViewName();

		log.info(resultPage);
	}

	// @Test // 삭제
	public void testRemove() throws Exception {
		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/board/remove").param("bno", "4")).andReturn()
				.getModelAndView().getViewName();

		log.info(resultPage);
	}

	// @Test
	public void testListPaging() throws Exception {

		log.info(mockMvc
				.perform(MockMvcRequestBuilders.get("/service/s_list").param("pageNum", "2").param("amount", "10"))
				.andReturn().getModelAndView().getModelMap());
	}

}
