package com.mana.service;

import java.util.List;

import com.mana.vo.LoginVO;
import com.mana.vo.ManaListVO;
import com.mana.vo.MemberVO;
import com.mana.vo.ReservInsertVO;
import com.mana.vo.ReservVO;
import com.mana.vo.clientVO;
import com.mana.vo.daySaleVO;
import com.mana.vo.monthSaleVO;
import com.mana.vo.yearSaleVO;

public interface ManaService {
	//login
	public LoginVO checkUser(LoginVO login);
	
	//
	public List<ManaListVO> manalist();
	//
	public yearSaleVO yearsale();
	//
	public monthSaleVO monthsale();
	//
	public daySaleVO daysale();
	//
	public List<ReservVO> reserv();
	//
	public List<clientVO> client();
	//시술입력창 가는길
	public List<ManaListVO> insertinfo(clientVO vo);
	//고객정보
	//지금은 client() 바로 가져올건데 나중에 최근 방문일 넣으면 작성
	
	//시술입력
	public void listinsert(ManaListVO mana);
	//멤버 불러오기
	public List<MemberVO> member();
	
	//고객 정보 입력
	public void clientinsert(clientVO vo);
	//고객 예약 입력
	public void reinsert(ReservInsertVO vo);
	//멤버 입력
	public void memberin(MemberVO vo);
	
}