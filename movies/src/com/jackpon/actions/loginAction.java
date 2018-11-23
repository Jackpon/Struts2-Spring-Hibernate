package com.jackpon.actions;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Hibernate;

import com.jackpon.bean.User;
import com.jackpon.dao.HibernateDao;
import com.jackpon.dao.HibernateDaoImpl;
import com.opensymphony.xwork2.ActionSupport;

public class loginAction extends ActionSupport implements SessionAware{
	private Map<String, Object> session;
	private User user;
	private HibernateDao hibernateDao=new HibernateDaoImpl();
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
