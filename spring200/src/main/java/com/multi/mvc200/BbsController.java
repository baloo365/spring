package com.multi.mvc200;

import java.util.ArrayList;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller //스프링에서 제어하는 역할로 등록! 
public class BbsController {
	
	@Autowired //BbsDAO로 만든 싱글톤 있으면 ram에 어디있는지 자동으로 찾아서 해줘라는 뜻.
	// 그 부품이 어디있는지 찾아주는 어노테이션이라고 생각하면 됨.
	BbsDAO dao; //전역변수(글로벌 변수)
	//컨트롤 하는 기능(CRUD)
	//회원가입, 수정, 탈퇴, 정보검색
	
	//클래스 내에서 기능처리 담당
	//멤버변수 + 멤버메서드(기능처리 담당)
	//하나의 요청당 하나의 메서드
	//하나의 버튼호출당 하나의 함수 연결!
	//요청된 주소가 어떻게 될 때
	//바로 아래에 있는 메서드가 호출이 될지를
	//써주어야 한다. 
	@RequestMapping("insert2.multi")
	public void insert(BbsVO bag) {
		//메서드의 입력변수(파라메터)로 변수를
		//선언해두면, 컨트롤러내의 메서드내에서는
		//1)bag을 만들어서 
		//2)클라이언트로 부터 전달된 데이터도 받아줌.
		//3)bag에 데이터 다 넣어줌.
		System.out.println("insert요청됨.");
		System.out.println(bag);
		System.out.println(dao);
		//MemberDAO dao = new MemberDAO();
				//dao에게 insert요청!!
				dao.insert2(bag);
	}
	
	
	@RequestMapping("update2.multi")
	public void update(BbsVO bag) {
		System.out.println("update요청됨");
		System.out.println("bag");
		System.out.println(dao);
		dao.update2(bag);
	}
	
	@RequestMapping("delete2.multi")
	public void delete(int no) {
		System.out.println("delete요청됨");
		System.out.println("bag");
		System.out.println(dao);
		dao.delete2(no);
	}
	
	@RequestMapping("one2.multi")
	public void one(int no, Model model) {
		System.out.println("one요청됨");
		System.out.println("bag");
		System.out.println(dao);
		BbsVO bag = dao.one2(no);
		model.addAttribute("bag", bag);
	}
	
	@RequestMapping("list2.multi") // 사용 안 하더라도 이름 겹치지 않게 모두 바꿔줘야 함.(MemberController와 이름이 겹치지 않게)
	public void list(Model model) {
		ArrayList<BbsVO> list = dao.list2();
		model.addAttribute("list", list);
	}
	
	@RequestMapping("list5.multi") // 사용 안 하더라도 이름 겹치지 않게 모두 바꿔줘야 함.(MemberController와 이름이 겹치지 않게)
	public void list5(Model model) {
		ArrayList<BbsVO> list = dao.list2();
		model.addAttribute("list", list);
	}
	
	@RequestMapping("update5.multi")
	public void update5(BbsVO bag, Model model) {
		System.out.println("update요청됨");
		System.out.println("bag");
		System.out.println(dao);
		BbsVO bag2 = dao.one2(bag.getNo());
		dao.update2(bag);
		model.addAttribute("bag", bag2);
	}
	
	@RequestMapping("delete5.multi")
	public void delete5(int no, Model model) {
		System.out.println("delete요청됨");
		System.out.println("bag");
		System.out.println(dao);
		BbsVO bag = dao.one2(no);
		dao.delete2(no);
		model.addAttribute("bag", bag);
	}
	
	//https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query=%EC%9E%90%EB%8F%99%EC%B0%A8
	
	
	
	
	
}