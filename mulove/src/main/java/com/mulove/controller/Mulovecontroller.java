package com.mulove.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mulove.dto.BoardDTO;
import com.mulove.dto.MemberDTO;
import com.mulove.mapper.Boardmapper;
import com.mulove.service.Muloveservice;
import com.mulove.vo.BoardVO;
import com.mulove.vo.BoardViewVO;
import com.mulove.vo.MemberVO;
import com.mulove.vo.ReplyVO;
import com.mulove.vo.keywordVO;

import lombok.extern.log4j.Log4j;

@Controller
public class Mulovecontroller {

	@Autowired
	Muloveservice service;
	@Autowired
	Boardmapper mapper;

	// 보더
	@GetMapping("/board")
	// 로그인 후 첫 화면
	public String select(Model m) {
		m.addAttribute("list", service.boardList());
		m.addAttribute("list2", service.reList());
		return "board1";
	}

	// 검색 결과
	@GetMapping("/search")
	public String sea(keywordVO keyword, Model m) {
		m.addAttribute("list", service.sssList(keyword));
		m.addAttribute("list2", service.reList());
		return "board1";
	}

	@PostMapping("/search")
	// 모든 결과
	public String nullk(Model m) {
		m.addAttribute("list", service.boardList());
		return "redirect:/board";
	}

	// update post
	@GetMapping("/uppost")
	public String uppost(BoardVO board, Model m) {
		m.addAttribute("list", service.uppost(board));
		return "updatepost";
	}

	// postupdate
	@PostMapping("/postupdate")
	public String poupdate(BoardVO board) {
		service.poupdate(board);
		// m.addAttribute("list", service.uppost(board));
		return "redirect:/mypage";
	}

	// del
	@PostMapping("/delpost")
	public String delpost(BoardVO board) {
		service.delpost(board);
		// m.addAttribute("list", service.uppost(board));
		return "redirect:/mypage";
	}

	// 회원 가입
	@GetMapping("/join")
	public String insert() {
		return "joinForm";
	}

	@PostMapping("/memberjoin")
	public String memberjoin(MemberDTO member, MultipartFile[] img) {
		service.memberjoin(member, img);
		return "redirect:/";
	}

	// board insert
	@GetMapping("/boardin")
	public String boin() {
		return "boardin";
	}

	@PostMapping("/boardjoin")
	public String boardin(BoardDTO dto, MultipartFile[] img, Model m) {
		service.boardin(dto, img);
		m.addAttribute("list", service.boardList());
		return "redirect:/board";
	}

	// 로그인
	@GetMapping("/")
	public String log() {
		return "loginForm";
	}

	@PostMapping("/login")
	public String login(MemberVO member, RedirectAttributes redirect, HttpServletRequest request, Model m) {
		System.out.println("index() controller들어옴");
		MemberVO result = this.service.checkUser(member);
		if (result != null) {
			System.out.println(result);
			HttpSession session = request.getSession();
			session.setAttribute("mem", result);// 세션에 로그인 정보를 넘김
			m.addAttribute("list", service.boardList());
			return "redirect:/board";
		} else {
			redirect.addFlashAttribute("msg", "로그인 실패");
			System.out.println("로그인 실패");
			return "loginForm2";
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

	// 마이페이지
	@GetMapping("/mypage")
	public String mypage(Model m) {
		m.addAttribute("list", service.boardList());
		return "mypage";
	}

	// your페이지
	@GetMapping("/you")
	public String yourpage(BoardViewVO bv, Model m) {
		m.addAttribute("list", service.yourpage(bv));
		return "yourpage";
	}

	// update member
	@GetMapping("/updatemem")
	public String updatemember() {

		return "updatemember";
	}

	@PostMapping("/memupdate")
	public String memupdate(MemberVO member,HttpServletRequest request) {
		service.memupdate(member);
		MemberVO result = this.service.checkUser(member);
		HttpSession session = request.getSession();
		session.setAttribute("mem", result);// 세션에 로그인 정보를 넘김
		System.out.println(result);
		return "redirect:/mypage";
	}

	// 댓글
	@PostMapping("/reinsert")
	public String reinsert(Model m,ReplyVO re) {
		service.reinsert(re);
		m.addAttribute("list2", service.reList());
		return "redirect:/board";
	}

	// mypage 댓글
	@PostMapping("/reinsert2")
	public String reinsert2(ReplyVO re,BoardViewVO bv,Model m) {
		service.reinsert(re);
		m.addAttribute("list", service.selectimg(bv));
		m.addAttribute("list2", service.reList());
		return "redirect:/selectimg";
	}

	// 상세페이지
	@GetMapping("/selectimg")
	public String selectimg(BoardViewVO bv, Model m) {
		m.addAttribute("list", service.selectimg(bv));
		m.addAttribute("list2", service.reList());
		return "selectimg";
	}
}
