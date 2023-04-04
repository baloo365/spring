package com.multi.mvc200;

public class MovieVO {

		//MemberVO가방에 넣은 데이터는 Member테이블에 들어갈 예정
		//각 컬럼과 일치시켜 줌. 
		private String title;
		private int price;
		
		//하나의 변수당 set/get하나씩 만들어줌. 
		//가방에 하나씩 값을 넣어주어야 함. ==> setter
		public void setTitle(String title) {
			this.title = title;
		}
		
		//가방에 하나씩 값을 꺼내주어야 함. ==> getter
		public String getTitle() {
			return title;
		}
		
		public void setPrice(int price) {
			this.price = price;
		}
		
		public int getPrice() {
			return price;
		}

		
		@Override
		public String toString() {
			return "MovieVO [title=" + title + ", price=" + price + "]";
		}
		
		//가방에 어떤 값들이 들어있는지 string으로 다 찍어볼 수 있다.
		
	}