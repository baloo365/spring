package com.multi.mvc200;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller //스프링에서 제어하는 역할로 등록! 
public class BookController {

	@Autowired
	BookDAO dao;
	//컨트롤 하는 기능(CRUD)
	//회원가입, 수정, 탈퇴, 정보검색
	
	@RequestMapping("insert3.multi")
	public void inser(BookVO bag, BookDAO dao) {
		dao.insert(bag);
		System.out.println("insert요청됨.");
		System.out.println(bag);
	}
	
	@RequestMapping("one3.multi")
	public void one(int id, Model model) {
		System.out.println("one요청됨");
		System.out.println("bag");
		System.out.println(dao);
		BookVO bag = dao.one(id);
		model.addAttribute("bag", bag);
	}
	
	@RequestMapping("list3.multi") // 사용 안 하더라도 이름 겹치지 않게 모두 바꿔줘야 함.(MemberController와 이름이 겹치지 않게)
	public void list(Model model) {
		ArrayList<BookVO> list = dao.list();
		model.addAttribute("list", list);
	}
	
	@RequestMapping("list33") // 사용 안 하더라도 이름 겹치지 않게 모두 바꿔줘야 함.(MemberController와 이름이 겹치지 않게)
	@ResponseBody
	public ArrayList<BookVO> list33() {
		ArrayList<BookVO> list = dao.list();
		return list;
	}
	
	//https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query=%EC%9E%90%EB%8F%99%EC%B0%A8
	
	
	
	
	
}