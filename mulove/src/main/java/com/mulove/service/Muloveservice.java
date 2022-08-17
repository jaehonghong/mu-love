package com.mulove.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

import com.mulove.dto.BoardDTO;
import com.mulove.dto.MemberDTO;
import com.mulove.vo.BoardVO;
import com.mulove.vo.BoardViewVO;
import com.mulove.vo.MemberVO;
import com.mulove.vo.ReplyVO;
import com.mulove.vo.ReviewVO;
import com.mulove.vo.BoardViewVO;
import com.mulove.vo.keywordVO;

public interface Muloveservice {

	// �Խ���
	public List<BoardViewVO> boardList();

	public List<BoardViewVO> sssList(keywordVO keyword);

	public List<BoardViewVO> board2List();

	// insert memberjoin
	public void memberjoin(MemberDTO member, MultipartFile[] img);

	// login
	public MemberVO checkUser(MemberVO member);

	// board insert
	public void boardin(BoardDTO dto, MultipartFile[] img);

	// member data update
	public void memupdate(MemberVO member);

	// update post
	public BoardVO uppost(BoardVO board);

	public void poupdate(BoardVO board);

	public void delpost(BoardVO board);

	// yourpage
	public List<BoardViewVO> yourpage(BoardViewVO bv);

	// ���
	public void reinsert(ReplyVO re);

	// ��� ��ȸ
	public List<ReviewVO> reList();

	// ��������
	public BoardViewVO selectimg(BoardViewVO bv);
}
