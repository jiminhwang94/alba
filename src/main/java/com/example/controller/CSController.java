package com.example.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.domain.CSCriteria;
import com.example.domain.CSVO;
import com.example.domain.PageDTO;
import com.example.domain.PmemberVo;
import com.example.service.CSService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/service/*")
@AllArgsConstructor
public class CSController {

	private CSService cservice;

	@GetMapping("/joinmem")
	public void joinmem() {

	}

	@GetMapping("/s_register")
	public void register() {

	}

	/*
	 * @GetMapping("/s_list") public void list(Model model) { log.info("s_list");
	 * model.addAttribute("s_list", cservice.getList()); }
	 */

	@GetMapping("/s_list")
	public void getList(Model model, @Param("cri") CSCriteria cri, String sn_id, HttpSession session) {

		PmemberVo login = (PmemberVo) session.getAttribute("LoginVo");

		if (login.getP_id().equals("admin")) {
			int total = cservice.countTotal();
			model.addAttribute("s_list", cservice.getListWithAdminPaging(cri));
			model.addAttribute("pageMaker", new PageDTO(cri, total));
			log.info("s_list" + cri);
		} else {
			int total = cservice.countUserTotal(login.getP_id());
			model.addAttribute("s_list", cservice.getListWithUserPaging(login.getP_id(), cri));
			model.addAttribute("pageMaker", new PageDTO(cri, total));
			log.info("s_list" + cri);
		}

	}

	@PostMapping("/s_register")
	public String register(CSVO service, RedirectAttributes rttr) {
		log.info("s_register: " + service);
		cservice.sregister(service);
		rttr.addFlashAttribute("result", service.getS_num());
		return "redirect:/service/s_list";
	}

	@GetMapping({ "/s_get", "/s_modify" })
	public void get(Model model, Long s_num, @Param("cri") CSCriteria cri, String sn_id, HttpSession session) {

		PmemberVo login = (PmemberVo) session.getAttribute("LoginVo");

		log.info("/s_get" + s_num);
		model.addAttribute("service", cservice.sget(s_num));
		model.addAttribute("page", cri);
		model.addAttribute("loginT", login.getP_id());
		log.info(login.getP_id());
	}

	@PostMapping("/s_modify")
	public String modify(CSVO service, @Param("cri") CSCriteria cri, RedirectAttributes rttr) {
		log.info("s_modify:" + service);

		if (cservice.smodify(service)) {
			rttr.addFlashAttribute("result", "success");
		}
		rttr.addFlashAttribute("pageNum", cri.getPageNum());
		rttr.addFlashAttribute("amount", cri.getAmount());

		return "redirect:/service/s_list?&pageNum=" + cri.getPageNum() + "&amount=" + cri.getAmount();
	}

}
