package com.mulove.service;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.mulove.dto.BoardDTO;
import com.mulove.dto.MemberDTO;
import com.mulove.mapper.Boardmapper;
import com.mulove.vo.BoardVO;
import com.mulove.vo.MemberVO;
import com.mulove.vo.ReplyVO;
import com.mulove.vo.ReviewVO;
import com.mulove.vo.BoardViewVO;
import com.mulove.vo.keywordVO;

@Service
public class MuloveserviceImpl implements Muloveservice {

	@Autowired
	Boardmapper mapper;

	public List<BoardViewVO> boardList() {
		return mapper.boardList();
	}

	public List<BoardViewVO> board2List() {
		return mapper.boardList();
	}

	public List<BoardViewVO> sssList(keywordVO keyword) {
		return mapper.sssList(keyword);
	}

	// 회원가입
	public void memberjoin(MemberDTO member, MultipartFile[] img) {
		mapper.memberjoin(member);
		String uploadFolder = "C:\\upload";

		for (MultipartFile multipartFile : img) {

			String upFileName = multipartFile.getOriginalFilename();

			// IE has file path
			upFileName = upFileName.substring(upFileName.lastIndexOf("\\") + 1);

			UUID uuid = UUID.randomUUID();

			upFileName = uuid.toString() + "_" + upFileName;

			File saveFile = new File(uploadFolder, upFileName);

			try {
				mapper.memimgupdate(upFileName);
				multipartFile.transferTo(saveFile);
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
		}
	}

	// board insert
	public void boardin(BoardDTO dto, MultipartFile[] img) {
		mapper.boardin(dto);
		String uploadFolder = "C:\\upload";
		for (MultipartFile multipartFile : img) {
			String uploadFileName = multipartFile.getOriginalFilename();

			// IE has file path
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);

			UUID uuid = UUID.randomUUID();

			uploadFileName = uuid.toString() + "_" + uploadFileName;

			File saveFile = new File(uploadFolder, uploadFileName);

			try {
				mapper.imgupdate(uploadFileName);
				multipartFile.transferTo(saveFile);
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
		}
	}

	// 회원정보 업데이트
	public void memupdate(MemberVO member) {
		mapper.memupdate(member);
	}

	// login
	public MemberVO checkUser(MemberVO member) {
		return mapper.checkUser(member);

	}

	// update post
	public BoardVO uppost(BoardVO board) {
		return mapper.uppost(board);
	}

	public void poupdate(BoardVO board) {
		mapper.poupdate(board);
	}

	// delete
	public void delpost(BoardVO board) {
		mapper.delpost(board);
	}

	// yourpage
	public List<BoardViewVO> yourpage(BoardViewVO bv) {
		return mapper.yourpage(bv);
	}

	// 댓글
	public void reinsert(ReplyVO re) {
		mapper.reinsert(re);
	}

	// 댓글 조회
	public List<ReviewVO> reList() {
		return mapper.reList();
	}

	// 상세페이지
	public BoardViewVO selectimg(BoardViewVO bv) {
		return mapper.selectimg(bv);
	}
}
