package com.multi.mvc700;

public class MovieVO {
	private int id;
	private String title;
	private String genre;
	private double grade;
	private String director;
	
	@Override
	public String toString() {
		return "BbsVO [id=" + id + ", title=" + title + ", genre=" + genre + ", grade=" + grade + ", director="
				+ director + "]";
	}
	//Getters/Setters만들어주세요.
	
	
	//toString도 만들어주세요.

	
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getGenre() {
		return genre;
	}


	public void setGenre(String genre) {
		this.genre = genre;
	}


	public double getGrade() {
		return grade;
	}


	public void setGrade(double grade) {
		this.grade = grade;
	}

	public String getDirector() {
		return director;
	}


	public void setDirector(String director) {
		this.director = director;
	}
	
}
