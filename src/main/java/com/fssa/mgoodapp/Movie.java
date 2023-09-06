package com.fssa.mgoodapp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.fssa.mgoodapp.model.ListMovies;

@WebServlet("/Movie")
public class Movie extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<ListMovies> Movies = new ArrayList<ListMovies> ();
		PrintWriter out = response.getWriter();
		
		Movies.add(new ListMovies("Jailer" , "Thriller","Rajini","Tamil"));
		Movies.add(new ListMovies("Anniyan" , "Horror","Vikram","Tamil"));
		Movies.add(new ListMovies("Kanchana" , "Comedy","Ragava","Tamil"));
		String movieName = request.getParameter("movieName");

		 List<ListMovies> matchedMovies = new ArrayList<>();
		  for (ListMovies movie : Movies) {
	            if (movieName.equals(movie.getMoviename())) {
	            	matchedMovies.add(movie);
	                break;
	            }
	        }
		JSONArray apps =  new JSONArray(matchedMovies);
		out.print(apps.toString());
	
		
	}


	

}
