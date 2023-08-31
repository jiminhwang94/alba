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
public class MemControllerTest {
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

			if (i < 25) {
				String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/member/pregister")
						.param("p_id", "wkq" + i).param("p_name", "잡" + i).param("s_type", "공고")
						.param("s_title", "공고 문의" + i).param("s_content", "공고 문의함돠" + i)).andReturn().getModelAndView()
						.getViewName();
				log.info(resultPage);
			} else if (i < 50) {
				String resultPage = mockMvc.perform(
						MockMvcRequestBuilders.post("/member/pregister").param("s_id", "wlq").param("s_name", "집")
								.param("s_type", "알바").param("s_title", "알바 문의" + i).param("s_content", "알바 문의함돠" + i))
						.andReturn().getModelAndView().getViewName();
				log.info(resultPage);
			} else if (i < 50) {
				String resultPage = mockMvc.perform(
						MockMvcRequestBuilders.post("/member/pregister").param("s_id", "wnq").param("s_name", "줍")
								.param("s_type", "후기").param("s_title", "후기 문의" + i).param("s_content", "후기 문의함돠" + i))
						.andReturn().getModelAndView().getViewName();
				log.info(resultPage);
			} else {
				String resultPage = mockMvc.perform(
						MockMvcRequestBuilders.post("/member/pregister").param("s_id", "wjq").param("s_name", "접")
								.param("s_type", "회원").param("s_title", "회원 문의" + i).param("s_content", "회원 문의함돠" + i))
						.andReturn().getModelAndView().getViewName();
				log.info(resultPage);
			}
		}
	}
}
