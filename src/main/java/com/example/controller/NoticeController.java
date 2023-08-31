package com.example.controller;

import java.util.Objects;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.domain.CmemberVo;
import com.example.domain.NoticeVO;
import com.example.service.NoticeService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/notice/*")
@AllArgsConstructor
public class NoticeController {

	private NoticeService nService;

	@GetMapping("/n_register")
	public String register(HttpSession session) {
		CmemberVo login = (CmemberVo) session.getAttribute("LoginVo");

		if (Objects.isNull(login))
			return "/member/clogin";
		else
			return "/notice/n_register";
	}

	@GetMapping("/n_regit")
	public void regit() {

	}

	@GetMapping("/n_notice")
	public void notice(Model model) {
		log.info("n_notice");
		model.addAttribute("n_notice", nService.getCompanyList());
	}

	@PostMapping("/n_modify")
	public String modify(NoticeVO notice, RedirectAttributes rttr) {
		nService.modify(notice);
		rttr.addFlashAttribute("result", "success");
		return "redirect:/notice/mainhome";
	}

	// 공고 모집[개인회원 열람만 가능]
	@GetMapping({ "/n_get", "/n_modify" })
	public void see(@RequestParam("company") String company, Model model) {
		model.addAttribute("company", nService.get(company));
	}

	// notice 등록
	@PostMapping("/n_register")
	public String register(NoticeVO notice, RedirectAttributes rttr) {
		log.info("n_register: " + notice);
		nService.register(notice);
		rttr.addFlashAttribute("result", notice.getCompany());
		return "redirect:/notice/mainhome";
	}

	// notice 삭제
	@RequestMapping(value = "/n_remove", method = { RequestMethod.GET, RequestMethod.POST })
	public String remove(@RequestParam("company") String company, RedirectAttributes rttr) {
		log.info("n_remove... " + company);
		if (nService.remove(company)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/notice/mainhome";
	}

	@GetMapping("/mainhome")
	public void mainhome(Model model) {
		log.info("n_notice");
		model.addAttribute("n_notice", nService.getCompanyList());
	}
}

//register
//
//area - 서울~부산
//conn - 월급
//year - ~세
//sex - 남,여
//day - 월 ~일
//datee - 1년 ~ 3년 근무기간 
//
//---------> select option
//ㅁ ㅁ ㅁ ㅁ ㅁ
