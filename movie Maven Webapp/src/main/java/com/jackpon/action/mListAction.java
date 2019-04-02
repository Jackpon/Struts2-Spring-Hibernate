package com.jackpon.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.google.gson.Gson;
import com.jackpon.bean.Movies;
import com.jackpon.dao.HibernateDao;
import com.jackpon.dao.HibernateDao;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class mListAction extends ActionSupport {
	private int page;
	private int limit=10;
	private Map<String,Object> jsonResult;
	public Map<String, Object> getJsonResult() {
		return jsonResult;
	}

	public void setJsonResult(Map<String, Object> jsonResult) {
		this.jsonResult = jsonResult;
	}
	@Autowired
	private HibernateDao hibernateDao;
	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	public int getPage() {
		return page;
	}
 
	public void setPage(int page) {
		this.page = page;
	}
	public String findAll() throws SQLException, IOException{
	    List<Movies> allUser = hibernateDao.getAllMovies(this.getPage(), this.getLimit());
	    jsonResult = new HashMap<String, Object>();
	    jsonResult.put("code", 0);
	    jsonResult.put("msg", "");
	    jsonResult.put("count", allUser.size());
	    jsonResult.put("data", allUser);
	    return SUCCESS;
	}
	public String ilist() throws Exception{
		int current_page=getPage();
		List<Movies> list =hibernateDao.getAllMovies(current_page);
		
		ActionContext context=ActionContext.getContext();
		/*int pages=hibernateDao.MoviesCount();
		if(pages%Movies.PAGE_SIZE==0){
			pages=pages/Movies.PAGE_SIZE;
		}else {
			pages=pages/Movies.PAGE_SIZE+1;
		}
		StringBuffer s=new StringBuffer();
		if(current_page==1){
			s.append("<li class='page-item disabled'><a class='page-link' href='#' tabindex='-1'>Previous</a></li>");
		}else {
			s.append("<li class='page-item'><a class='page-link' href='mList-ilist?page="+(current_page-1)+"' tabindex='-1'>Previous</a></li>");
		}
		for(int i=1;i<=pages;i++){
			if(i==current_page){
				s.append("<li class='page-item disabled'><a class='page-link' href='mList-ilist?page="+i+"'>"+i+"</a></li>");
			}
			else{
				s.append("<li class='page-item'><a class='page-link' href='mList-ilist?page="+i+"'>"+i+"</a></li>");
			}
		}
		if(current_page==pages){
			s.append("<li class='page-item disabled'><a class='page-link' href='#' tabindex='-1'>Next</a></li>");
		}else {
			s.append("<li class='page-item'><a class='page-link' href='mList-ilist?page="+(current_page+1)+"' tabindex='-1'>Next</a></li>");
		}
		context.put("s",s);		
		*/
		context.put("list", list);
		
		return SUCCESS;		
	}
}
