package com.jackpon.actions;

import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.enterprise.inject.New;
import javax.swing.text.AbstractDocument.Content;

import org.apache.struts2.interceptor.SessionAware;

import com.jackpon.bean.Movies;
import com.jackpon.dao.HibernateDao;
import com.jackpon.dao.HibernateDaoImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import freemarker.template.utility.NormalizeNewlines;
import javassist.expr.NewArray;

public class likeAction extends ActionSupport {
	private Movies movies;
	private List<Movies> moviesList = new ArrayList<Movies>();
	private String name;
	private HibernateDao hibernateDao=new HibernateDaoImpl();
	public String delete() {
		hibernateDao.delete(name);
		return SUCCESS;
	}
	
	public String ilist() throws SQLException, UnsupportedEncodingException {
		List<Movies> list =hibernateDao.ilike();
		setMoviesList(list);
		Map session = ActionContext.getContext().getSession();
		session.put("count", moviesList.size());
		return SUCCESS;
	}
	public String add() throws UnsupportedEncodingException {
		return hibernateDao.addUserLike(movies);
	}
	public Movies getMovies() {
		return movies;
	}
	public void setMovies(Movies movies) {
		this.movies = movies;
	}
	public List<Movies> getMoviesList() {
		return moviesList;
	}
	public void setMoviesList(List<Movies> moviesList) {
		this.moviesList = moviesList;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

}
