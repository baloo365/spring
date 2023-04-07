package com.multi.mvc700;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


//테이블 하나당 DAO하나! ==> CUD를 완성!! 
@Component
public class MovieDAO {
	// mybatis 싱글톤 객체 찾아서 주소를 넣어주세요.!
	@Autowired
	SqlSessionTemplate my;

	// public void add2() {
	public int insert(MovieVO bag) {
		int result = my.insert("movie.create", bag);
		// 선언해두면
		return result;
	}

	public int update(MovieVO bag) {
		int result = my.update("movie.up", bag);
		// 선언해두면
		return result;
	}

	public int delete(int id) {
		int result = my.delete("movie.del", id);
		// 선언해두면
		return result;
	}
	

	public MovieVO one(int id) {
		System.out.println("------" + my);
		MovieVO bag = my.selectOne("movie.one", id);
		return bag;
	}
	
	public List<MovieVO> list() {
		System.out.println("------" + my);
		List<MovieVO> list = my.selectList("movie.all");
		return list;
	}
}
