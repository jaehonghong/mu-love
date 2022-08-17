package com.mulove.mapper;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.mulove.dto.BoardDTO;
import com.mulove.dto.MemberDTO;
import com.mulove.vo.BoardVO;
import com.mulove.vo.MemberVO;
import com.mulove.vo.ReplyVO;
import com.mulove.vo.ReviewVO;
import com.mulove.vo.BoardViewVO;
import com.mulove.vo.keywordVO;

public interface Boardmapper {
	//
	@Select("select * from post_view order by post_num desc")
	public List<BoardViewVO> boardList();

	@Select("select * from post_view where text like '%'||#{keyword}||'%' order by post_num desc")
	public List<BoardViewVO> sssList(keywordVO keyword);

	@Select("select * from post_view where text is null order by post_num desc")
	public List<BoardViewVO> board2List();

	//member data update
	@Update("update member set nicname=#{nicname} where member_num=#{member_num}")
	public void memupdate(MemberVO member);

	//
	@Select("select count(*) from member where id=#{id}")
	public int idCheck(String memberID);

	// login
	@Select("select * from member where id=#{id} and pass=#{pass}")
	public MemberVO checkUser(MemberVO member);

	// board insert
	@Insert("insert into board(post_num,member_num,text,post_date) values(board_seq.nextval,#{member_num},#{text},sysdate)")
	public void boardin(BoardDTO dto);

	// board update img
	@Update("update board set img=#{uploadFileName} where post_num=(select MAX(post_num) from board)")
	public void imgupdate(@Param("uploadFileName") String uploadFileName);

	// join
	@Insert("insert into member(member_num,id,pass,nicname,phone,memo,address,regdate) values(member_seq.nextval,#{id},#{pass},#{nicname},#{phone},#{memo},#{address},sysdate)")
	public void memberjoin(MemberDTO member);

	// memimgupdate
	@Update("update member set img=#{upFileName} where member_num = (select MAX(member_num) from member)")
	public void memimgupdate(@Param("upFileName") String upFileName);

	@Select("select * from board where post_num=#{post_num} and member_num=#{member_num} order by post_num desc")
	public BoardVO uppost(BoardVO board);

	@Update("update board set text=#{text},img=#{img} where post_num=#{post_num} and member_num=#{member_num}")
	public void poupdate(BoardVO board);

	@Delete("delete From board where post_num=#{post_num} and member_num=#{member_num}")
	public void delpost(BoardVO board);

	// yourpage
	@Select("select * from post_view where member_num=#{member_num} order by post_num desc")
	public List<BoardViewVO> yourpage(BoardViewVO bv);

	// 댓글등록
	@Insert("insert into reply(re_num,board_num,text,redate,member_num) values(re_seq.nextval,#{board_num},#{text},sysdate,#{member_num})")
	public void reinsert(ReplyVO re);

	// 댓글 불러오기
	@Select("select * from re_view order by re_num")
	public List<ReviewVO> reList();

	// 상세페이지
	@Select("select * from post_view where post_num=#{post_num}")
	public BoardViewVO selectimg(BoardViewVO bv);

}
