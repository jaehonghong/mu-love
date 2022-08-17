package com.mana.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import com.mana.mapper.manaMapper;
import com.mana.service.ManaService;
import com.mana.vo.LoginVO;
import com.mana.vo.ManaListVO;
import com.mana.vo.MemberVO;
import com.mana.vo.ReservInsertVO;
import com.mana.vo.clientVO;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller

public class manaController {
	
	@Autowired
	ManaService service;
	@Autowired
	manaMapper mapper;

	//login
	@GetMapping("/")
	public String login(){
		return "loginForm";
	}
	@PostMapping("/loginpro")
	public String loginpro(LoginVO login, RedirectAttributes redirect, HttpServletRequest request, Model m) {
		System.out.println("index() controller�Է�");
		LoginVO result = this.service.checkUser(login);
		if (result != null) {
			System.out.println(result);
			HttpSession session = request.getSession();
			session.setAttribute("mem", result);// 세션 넣기
			return "redirect:/main";
		} else {
			redirect.addFlashAttribute("msg", "로그인 실패");
			return "loginForm";
		}
	}
	// logout
		@GetMapping("/logout")
		public String logout(HttpServletRequest request) {
			System.out.println("로그아웃 진입");
			HttpSession session = request.getSession();
			session.invalidate();
			return "redirect:/";
		}
	
	
	//main 페이지
	@GetMapping("/main")
	public String mainlist(Model m) {
		m.addAttribute("list", service.manalist());
		m.addAttribute("year", service.yearsale());
		m.addAttribute("month", service.monthsale());
		m.addAttribute("day", service.daysale());
		m.addAttribute("reserv", service.reserv());
		m.addAttribute("client", service.client());
		return "mainlistForm";
	}
	
	//시술입력창
	@GetMapping("/listin")
	public String listin(clientVO vo,Model m) {
		m.addAttribute("list", service.insertinfo(vo));
		System.out.println(vo);
		return "listin";
	}//시술 입력
	@GetMapping("/manainsert")
	public String listinsert(ManaListVO mana) {
		service.listinsert(mana);
		return "redirect:/main";
	}
	@GetMapping("/memberTable")
	public String memberTable(Model m) {
		m.addAttribute("list", service.member());
		return "memberTable";
	}
	@GetMapping("/insertClient")
	public void insertClient() {
		
	}
	@GetMapping("/clientinfo")
	public String clientinfo() {
		return "clientinfo";
	}
	//고객 정보 입력
	@PostMapping("/clientinsert")
	public String clientinsert(clientVO vo) {
		service.clientinsert(vo);
		return "redirect:/main";
	}
	//고객 정보 확인
	@GetMapping("/clientch")
	public void clientch(Model m) {
		m.addAttribute("list", service.client());
	}
	//예약 입력 창
	@GetMapping("/reservinsert")
	public String reservinsert() {
		return "reservinsert";
	}
	//예약 입력
	@PostMapping("/reinsert") 
	public String reinsert(ReservInsertVO vo) {
		service.reinsert(vo);
		return "redirect:/main";
	}
	//예약 정보 확인
	@GetMapping("/reservch")
	public void reservch(Model m) {
		m.addAttribute("list", service.reserv());
	}
	//멤버 추가 페이지
	@GetMapping("/insertMember")
	public void insertMember() {
		
	}
	@GetMapping("memberin")
	public String memberin(MemberVO vo) {
		service.memberin(vo);
		return "redirect:/main";
	}
	
//	@PostMapping("/reinsert")
//	@ResponseBody
//	public ReservInsertVO reinsert(ReservInsertVO vo) {
//		
//		return vo;
//	}
}	





