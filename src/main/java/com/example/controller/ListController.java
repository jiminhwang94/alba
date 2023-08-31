package com.example.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.domain.ListVO;
import com.example.service.ListService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/list/*")
@AllArgsConstructor
public class ListController {

	private ListService lService;

	@GetMapping("/l_register")
	public void register(ListVO service) {

	}

	@GetMapping("/l_list") // 개인회원전용 리스트 생각
	public void list(Model model, String company) {
		log.info("l_list");
		model.addAttribute("l_list", lService.getCompanyList(company));
	}

//	list 등록
	@PostMapping("/l_register")
	public String register(ListVO service, RedirectAttributes rttr) throws UnsupportedEncodingException {
		log.info("l_register: " + service);
		lService.register(service);
		rttr.addFlashAttribute("result", service.getSupporter());
		String company = URLEncoder.encode(service.getCompany(), "UTF-8");
		return "redirect:/list/l_list?company=" + company;
	}

//	list 보기
	@GetMapping({ "/l_get" })
	public void get(Model model, @RequestParam("supporter") String supporter) {
		model.addAttribute("list", lService.get(supporter));
		model.addAttribute("supporter", supporter);
	}

	// list 삭제
	@GetMapping("/l_remove")
	public String remove(@RequestParam("supporter") String supporter, @RequestParam("company") String company,
			RedirectAttributes rttr) {
		log.info("l_remove... " + company + supporter);
		if (lService.remove(company, supporter)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/list/l_list?company=" + company;
	}

}
