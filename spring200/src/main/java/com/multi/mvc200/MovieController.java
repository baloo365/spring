package com.multi.mvc200;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MovieController {
	
	@Autowired
	BbsDAO dao;
	
	@Autowired
	ReplyDAO dao2;
	
	@Autowired
	MemberDAO dao3;
	
	@Autowired
	ProductDAO dao4;
	
	@RequestMapping("one3")
	public void one(int no, Model model) {
		System.out.println("one요청됨.");
		System.out.println(no);
		BbsVO bag = dao.one2(no);
		//검색결과가 있는지 프린트!
		System.out.println(bag);
		//bbs상세페이지 만들 때, reply list도 함께 가지고 와야함.
		ArrayList<ReplyVO> list = dao2.list(no);
		model.addAttribute("list", list);
		model.addAttribute("bag", bag);
	}	
	
	@RequestMapping("one6")
	public void one6(int no, Model model) {
		System.out.println("one요청됨.");
		System.out.println(no);
		BbsVO bag = dao.one2(no);
		System.out.println(bag);
		model.addAttribute("bag", bag);
	}	
	
	@RequestMapping("one5")
	public void one(String id, Model model) {
		System.out.println("one요청됨.");
		System.out.println(id);
		MemberVO bag = dao3.one(id);
		//검색결과가 있는지 프린트!
		System.out.println(bag);
		model.addAttribute("bag", bag);
	}
	
	@RequestMapping("one7")
	public void one7(String id, Model model) {
		System.out.println("one요청됨.");
		System.out.println(id);
		ProductVO bag = dao4.one(id);
		//검색결과가 있는지 프린트!
		System.out.println(bag);
		model.addAttribute("bag", bag);
	}
	
	@RequestMapping("one22")
	@ResponseBody //veiws로 넘어가지 않고, Return값이 bag데이터를 json으로 만들어서 클라이언트로 전송
	//클라이언트 브라우저에서는 success: function(x>
	//결과가 함수의 입력변수인 x로 쏙 들어간다.
	
	public BbsVO one22(int no) {
		System.out.println("one요청됨.");
		System.out.println(no);
		BbsVO bag = dao.one2(no);
		System.out.println(bag);
		return bag;
	}	
	
	@RequestMapping("reply") // 사용 안 하더라도 이름 겹치지 않게 모두 바꿔줘야 함.(MemberController와 이름이 겹치지 않게)
	public void list2(int bbsno, Model model) {
		ArrayList<ReplyVO> list = dao2.list(bbsno);
		model.addAttribute("list", list);
	}
	
	@RequestMapping("list6") // 사용 안 하더라도 이름 겹치지 않게 모두 바꿔줘야 함.(MemberController와 이름이 겹치지 않게)
	public void list3(Model model) {
		ArrayList<MemberVO> list = dao3.list();
		model.addAttribute("list", list);
	}
	
	@RequestMapping("list7") // 사용 안 하더라도 이름 겹치지 않게 모두 바꿔줘야 함.(MemberController와 이름이 겹치지 않게)
	public void list7(Model model) {
		ArrayList<ProductVO> list = dao4.list();
		model.addAttribute("list", list);
	}
	
	@RequestMapping("list77") // 사용 안 하더라도 이름 겹치지 않게 모두 바꿔줘야 함.(MemberController와 이름이 겹치지 않게)
	@ResponseBody
	public ArrayList<BbsVO> list55() {
		ArrayList<BbsVO> list = dao.list2();
		System.out.println(list.size());
		return list;
	}
	
	@RequestMapping("movie")
	public void movie(MovieVO vo, Model model) {
		model.addAttribute("vo", vo);
		System.out.println(vo);
		
	}
	
	@RequestMapping("fruit")
		public void fruit(Model model) {
			ArrayList<String> list = new ArrayList<String>();
			list.add("사과");
			list.add("딸기");
			list.add("참외");
			list.add("포도");
			model.addAttribute("list", list);
			System.out.println(list);
			
		}	
	
	@RequestMapping("tour")
	public void tour(Model model) {
		ArrayList<String> list = new ArrayList<String>();
		list.add("순창");
		list.add("완도");
		list.add("목포");
		list.add("제주도");
		model.addAttribute("list", list);
		System.out.println(list);
		
	}	
	
	
	@RequestMapping("insert3")
	public void insert(ReplyVO bag, Model model) {
		//메서드의 입력변수(파라메터)로 변수를
		//선언해두면, 컨트롤러내의 메서드내에서는
		//1)bag을 만들어서 
		//2)클라이언트로 부터 전달된 데이터도 받아줌.
		//3)bag에 데이터 다 넣어줌.
		
		//dao에게 insert요청!!
		dao2.insert(bag);
		model.addAttribute("bag", bag);
	}
}
