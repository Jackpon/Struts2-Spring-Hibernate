package com.jackpon.actions;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.google.gson.Gson;
import com.jackpon.bean.Movies;
import com.jackpon.dao.HibernateDao;
import com.jackpon.dao.HibernateDaoImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class mListAction extends ActionSupport {
	private int page;
	private int limit=10;
	private HibernateDao hibernateDao=new HibernateDaoImpl();
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
	 	PrintWriter out;//用于返回数据到前台
        Gson gson = new Gson();
        HttpServletResponse response = ServletActionContext.getResponse();
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");
        out = response.getWriter();
        
	    List<Movies> allUser = hibernateDao.getAllMovies(this.getPage(), this.getLimit());
	    Map<String, Object> result = new HashMap<String, Object>();
	    result.put("code", 0);
	    result.put("msg", "");
	    result.put("count", allUser.size());
	    result.put("data", allUser);
        String  jso= gson.toJson(result);
        jso= jso.replace("\\", "");  
        out.println(jso);
        out.flush();
        out.close();
	    // 将其转换为JSON数据，并压入值栈返回
	    ActionContext context=ActionContext.getContext();
	    context.getValueStack().set("jsonData", jso);
	    return SUCCESS;
	}
	public String ilist() throws Exception{
		int current_page=getPage();
		ActionContext context=ActionContext.getContext();
		List<Movies> list =hibernateDao.getAllMovies(current_page);
		int pages=hibernateDao.MoviesCount();
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
		context.put("list", list);
		context.put("s",s);		
		return SUCCESS;		
	}
}
