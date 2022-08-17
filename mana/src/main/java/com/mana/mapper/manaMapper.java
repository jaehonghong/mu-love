package com.mana.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.mana.vo.LoginVO;
import com.mana.vo.ManaListVO;
import com.mana.vo.MemberVO;
import com.mana.vo.ReservInsertVO;
import com.mana.vo.ReservVO;
import com.mana.vo.clientVO;
import com.mana.vo.daySaleVO;
import com.mana.vo.monthSaleVO;
import com.mana.vo.yearSaleVO;


public interface manaMapper {

	// login
	@Select("select * from login where id=#{id} and pass=#{pass}")
	public LoginVO checkUser(LoginVO login);

	//시술내역
	@Select("select * from ss order by sale_date desc ")
	public List<ManaListVO> manalist();
	//연매출
	@Select("select sum(sale)as yearsale from ss where extract(Year from sale_date) = extract(Year from sysdate)")
	public yearSaleVO yearsale();
	//월매출
	@Select("select sum(sale)as monthsale from ss where extract(Month from sale_date) = extract(Month from sysdate)")
	public monthSaleVO monthsale();
	//일매출
	@Select("select sum(sale)as daysale from ss where extract(Day from sale_date) = extract(Day from sysdate)")
	public daySaleVO daysale();
	//예약 확인
	@Select("select * from re where redate >= sysdate order by redate ")
	public List<ReservVO> reserv();
	//�ü� Ȯ��
	@Select("select * from client order by client_num desc")
	public List<clientVO> client();
	//시술입력창 가는길
	@Select("select distinct * from client where name=#{name} AND phone like '%'||#{phone}")
	public List<ManaListVO> insertinfo(clientVO vo);
	//시술입력
	@Insert("insert into manage(manage_num,client_num,sale,text,sale_date,member_num,memo) values(manage_seq.nextval,#{client_num},#{sale},#{text},sysdate,#{member_num},#{memo})")
	public void listinsert(ManaListVO mana);
	//멤버 불러오기
	@Select("select * from member")
	public List<MemberVO> member();
	
	//고객 정보 입력
	@Insert("insert into client(client_num,name,phone,client_sex) values(client_seq.nextval,#{name},#{phone},#{client_sex})")
	public void clientinsert(clientVO vo);
	
	//예약 정보 입력
	@Insert("insert into reserv(reserv_num,member_num,re_name,redate,re_phone,retime) values(reserv_seq.nextval,#{member_num},#{re_name},#{redate},#{re_phone},#{retime})")
	public void reinsert(ReservInsertVO vo);
	//멤버 입력
	@Insert("insert into member values(member_seq.nextval,#{member_name})")
	public void memberin(MemberVO vo);

}