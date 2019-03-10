package com.jackpon.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;

import com.jackpon.bean.User;
import com.jackpon.dao.HibernateDao;
import com.jackpon.dao.HibernateDao;
import com.opensymphony.xwork2.ActionSupport;

public class loginAction extends ActionSupport implements SessionAware{
	private Map<String, Object> session;
	private User user;
	@Autowired
	private HibernateDao hibernateDao;
	public String check() throws SQLException {
		if(hibernateDao.findUser(user)==1){
			session.put("username", user.getName());
			return SUCCESS;
		}
		return ERROR;
	}
	
	public User getUser() {
		return user;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	
}
