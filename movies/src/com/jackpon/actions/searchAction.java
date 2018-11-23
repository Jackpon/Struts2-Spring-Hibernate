package com.jackpon.actions;

import java.io.FileNotFoundException;
import java.io.PrintStream;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jackpon.bean.Movies;
import com.jackpon.dao.HibernateDao;
import com.jackpon.dao.HibernateDaoImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class searchAction extends ActionSupport {
	private Movies movies;
	private List<Movies> searchList = new ArrayList<Movies>();
	private HibernateDao hibernateDao=new HibernateDaoImpl();
	public String find() throws SQLException, FileNotFoundException {
		ActionContext context=ActionContext.getContext();
		searchList=hibernateDao.find_Movie(movies);
		context.put("searchList", searchList);
		return SUCCESS;
	}
	public Movies getMovies() {
		return movies;
	}

	public void setMovies(Movies movies) {
		this.movies = movies;
	}
}
