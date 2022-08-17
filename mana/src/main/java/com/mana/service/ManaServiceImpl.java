package com.mana.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mana.mapper.manaMapper;
import com.mana.vo.LoginVO;
import com.mana.vo.ManaListVO;
import com.mana.vo.MemberVO;
import com.mana.vo.ReservInsertVO;
import com.mana.vo.ReservVO;
import com.mana.vo.clientVO;
import com.mana.vo.daySaleVO;
import com.mana.vo.monthSaleVO;
import com.mana.vo.yearSaleVO;


@Service
public class ManaServiceImpl implements ManaService{

	@Autowired
	manaMapper mapper;
	


	// login
	public LoginVO checkUser(LoginVO login) {
		return mapper.checkUser(login);

	}
	
	
	//시술 리스트
	public List<ManaListVO> manalist(){
		return mapper.manalist();
	}
	//연매출
	public yearSaleVO yearsale() {
		return mapper.yearsale();
	}
	//월매출
	public monthSaleVO monthsale() {
		return mapper.monthsale();
	}
	//일매출
	public daySaleVO daysale() {
		return mapper.daysale();
	}

	//예약정보
	public List<ReservVO> reserv(){
		return mapper.reserv();
	}
	//고객정보
	public List<clientVO> client(){
		return mapper.client();
	}
	
	//시술입력창 가는길
	public List<ManaListVO> insertinfo(clientVO vo) {
		return mapper.insertinfo(vo);
	}
	//시술입력
	public void listinsert(ManaListVO mana) {
		mapper.listinsert(mana);
	}
	//멤버 불러오기
	public List<MemberVO> member(){
		return mapper.member();
	}
	
	//고객 정보 입력
	public void clientinsert(clientVO vo) {
		mapper.clientinsert(vo);
	}
	//고객 정보 입력
	public void reinsert(ReservInsertVO vo) {
		mapper.reinsert(vo);
	}
	//멤버 입력
	public void memberin(MemberVO vo) {
		mapper.memberin(vo);
	}
}