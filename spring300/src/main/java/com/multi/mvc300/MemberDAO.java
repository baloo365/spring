package com.multi.mvc300;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Locale;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MemberDAO { // CRUD

		//mybatis 싱글톤 객체 찾아서 주소를 넣어주세요.!
		@Autowired
		SqlSessionTemplate my;

	// public void add2() {
	public int insert(MemberVO bag) {
		int result = my.insert("member.create", bag);
		//선언해두면
		return result;
	}
	public int update(MemberVO bag) {
		int result = my.update("member.up", bag);
		//선언해두면
		return result;
	}
	
	public int delete(String id) {
		int result = my.delete("member.del", id);
		//선언해두면
		return result;
	}

}