package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.domain.BoardVO;
import com.example.domain.CSCriteria;
import com.example.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/board/*")
@Log4j
@AllArgsConstructor
public class BoardController {
	private BoardService service;

	@GetMapping("/register")
	public void register() {

	}

	@GetMapping("/list")
	public void list(CSCriteria cri, Model model) {
		log.info("list: " + cri);
		log.info("listCri : " + cri.getPageNum() + cri.getAmount());
		model.addAttribute("list", service.bgetList(cri));
		model.addAttribute("cri", cri);
	}

	@PostMapping("/register")
	public String register(BoardVO board, RedirectAttributes rttr) {
		log.info("register: " + board);
		service.bregister(board);
		rttr.addFlashAttribute("result", board.getBno());
		return "redirect:/board/list";
	}

	@GetMapping({ "/get", "/modify", })
	public void get(@RequestParam("bno") Long bno, Model model) {
		log.info("/get");
		model.addAttribute("board", service.bget(bno));

	}

	@PostMapping("/modify")
	public String modify(BoardVO board, RedirectAttributes rttr) {
		log.info("modify: " + board);

		if (service.bmodify(board))
			rttr.addFlashAttribute("result", "success");

		return "redirect:/board/list";
	}

	@RequestMapping(value = "/remove", method = { RequestMethod.GET, RequestMethod.POST })
	public String remove(@RequestParam("bno") Long bno, RedirectAttributes rttr) {
		log.info("remove... " + bno);

		if (service.bremove(bno))
			rttr.addFlashAttribute("result", "success");

		return "redirect:/board/list";
	}

}