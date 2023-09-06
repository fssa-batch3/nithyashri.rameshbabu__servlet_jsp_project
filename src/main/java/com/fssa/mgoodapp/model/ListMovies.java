package com.fssa.mgoodapp.model;

public class ListMovies {

	private String moviename;
	private String genre;
	private String cast;
	private String language;
	
	
	public ListMovies(String moviename, String genre, String cast, String language) {
		super();
		this.moviename = moviename;
		this.genre = genre;
		this.cast = cast;
		this.language = language;
	}
	public String getMoviename() {
		return moviename;
	}
	public void setMoviename(String moviename) {
		this.moviename = moviename;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getCast() {
		return cast;
	}
	public void setCast(String cast) {
		this.cast = cast;
	}
	public String getLang() {
		return language;
	}
	public void setLang(String language) {
		this.language = language;
	}
	
	
	@Override
	public String toString() {
		return "ListMovies [moviename=" + moviename + ", genre=" + genre + ", cast=" + cast + ", language=" + language
				+ "]";
	}
	
	
	
}
