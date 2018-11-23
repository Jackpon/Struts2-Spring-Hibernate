package com.jackpon.dao;

import java.util.List;

import com.jackpon.bean.Movies;
import com.jackpon.bean.User;


public interface HibernateDao {
	//User's DAO Model
	public void addUser(User user);
	public int findUser(User user);
	//Movies' DAO Model
	public void add_UserLikeMovie(Movies movies);
	public int delete_UserLikeMovie(Movies movies);
	
	public List<Movies> find_Movie(Movies movies);
	public List<Movies> getAllMovies(int page);
	public List<Movies> getAllMovies(int page,int limit);
	public int MoviesCount();
	//like
	public void delete(String name);
	public List<Movies> ilike();
	public String addUserLike(Movies movies);
}
