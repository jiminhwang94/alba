package com.example.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.domain.CmemberVo;
import com.example.domain.PmemberVo;
import com.example.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/member/*")
@AllArgsConstructor
public class MemberController {
	@Autowired
	private MemberService service;

	@GetMapping("/cregister")
	public void cregister() {

	}

	@GetMapping("/clist") // 1.목록 조회
	public void clist(Model model) {
		log.info("clist");
		model.addAttribute("clist", service.cgetList());
	}

	@GetMapping("/clogin") // 1.로그인
	public String clogin() {
		return "/member/clogin";
	}

	@PostMapping("/clogin")
	public String login(CmemberVo vo, HttpSession session, RedirectAttributes rttr) {

		CmemberVo login = service.login(vo);

		if (login != null) {
			session.setAttribute("LoginVo", login);
		}

		rttr.addFlashAttribute("result", vo.getC_id());
		return "redirect:/notice/mainhome";
	}

	@PostMapping("/cregister") // 2.입력
	public String cregister(CmemberVo vo, RedirectAttributes rttr) throws Exception {
		log.info("cregister: " + vo);

		service.cregister(vo);

		rttr.addFlashAttribute("result", vo.getC_id());
		return "redirect:/member/clogin";
	}

	@GetMapping({ "/cget", "/cmodify" }) // 3.검색
	public void cget(String c_id, Model model, HttpSession session) {
		CmemberVo login = (CmemberVo) session.getAttribute("LoginVo");
		log.info("/cget");
		model.addAttribute("member", service.cget(login.getC_id()));
	}

	@PostMapping("/cmodify") // 4.수정
	public String cmodify(CmemberVo vo, RedirectAttributes rttr) {
		log.info("cmodify:" + vo);

		if (service.cmodify(vo)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/notice/mainhome";
	}

	// @PostMapping("/remove")//5.삭제
	// @GetMapping("/remove")//5.삭제
	@RequestMapping(value = "/cremove", method = { RequestMethod.GET, RequestMethod.POST })
	public String cremove(@RequestParam("c_id") String c_id, RedirectAttributes rttr, HttpSession session) {
		log.info("remove..." + c_id);
		if (service.cremove(c_id)) {
			rttr.addFlashAttribute("result", "success");
			session.invalidate();
		}
		return "redirect:/notice/mainhome";
	}

	@GetMapping("/pregister")
	public void register() {

	}

	@GetMapping("/pregisterre")
	public void registerre() {

	}

	@GetMapping("/plist")
	public void plist(Model model) {
		log.info("plist");
		model.addAttribute("plist", service.pgetList());
	}

//	@GetMapping("/plist") //1.목록 조회
//	public void list(Criteria cri, Model model)
//	{
//		log.info("plist" + cri);
//		model.addAttribute("plist", service.getList(cri));
//	}

	@GetMapping("/plogin") // 1.로그인
	public String plogin() {
		return "/member/plogin";
	}

	@PostMapping("/plogin")
	public String login(PmemberVo vo, HttpSession session) {

		PmemberVo login = service.login(vo);

		if (login != null) {
			session.setAttribute("LoginVo", login);
		}

		return "redirect:/notice/mainhome";
	}

	@PostMapping("/pregister") // 2.입력
	public String register(PmemberVo vo, RedirectAttributes rttr) throws Exception {
		log.info("pregister: " + vo);

		service.pregister(vo);

		rttr.addFlashAttribute("result", vo.getP_id());
		return "redirect:/member/plogin";
	}

	@GetMapping({ "/pget", "/pmodify" }) // 3.검색
	public void get(String p_id, Model model, HttpSession session) {
		PmemberVo login = (PmemberVo) session.getAttribute("LoginVo");
		log.info("/pget");
		model.addAttribute("member", service.pget(login.getP_id()));
	}

	@PostMapping("/pmodify") // 4.수정
	public String modify(PmemberVo vo, RedirectAttributes rttr) {
		log.info("pmodify:" + vo);

		if (service.pmodify(vo)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/notice/mainhome";
	}

	// @PostMapping("/remove")//5.삭제
	// @GetMapping("/remove")//5.삭제
	@RequestMapping(value = "/premove", method = { RequestMethod.GET, RequestMethod.POST })
	public String remove(@RequestParam("p_id") String p_id, RedirectAttributes rttr, HttpSession session) {
		log.info("remove..." + p_id);
		if (service.premove(p_id)) {
			rttr.addFlashAttribute("result", "success");
			session.invalidate();
		}
		return "redirect:/notice/mainhome";
	}

	@GetMapping("/membership")
	public String membership() {
		return "/member/membership";
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/notice/mainhome";

	}

	@GetMapping("/searchid")
	public void psearchid() {

	}

	@PostMapping("/searchid")
	public String searchid(PmemberVo vo, RedirectAttributes rttr) {

		rttr.addFlashAttribute("p_name", vo.getP_name());
		rttr.addFlashAttribute("p_phone", vo.getP_phone());

		return "redirect:/member/searchsuc";
	}

	@GetMapping("/searchsuc")
	public void searchsuc(Model model, @Param("p_name") String p_name, @Param("p_phone") String p_phone) {
		model.addAttribute("search", service.psearchId(p_name, p_phone));
	}
}
