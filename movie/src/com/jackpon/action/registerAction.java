package com.jackpon.action;

import org.springframework.beans.factory.annotation.Autowired;

import com.jackpon.bean.User;
import com.jackpon.bean.UserDTO;
import com.jackpon.dao.HibernateDao;
import com.jackpon.dao.HibernateDao;
import com.opensymphony.xwork2.ActionSupport;

public class registerAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserDTO userDTO;
	private User user=new User();
	@Autowired
	private HibernateDao hibernateDao;
	public String add() {
		user.setName(userDTO.getName());
		user.setPassword(userDTO.getPassword());
		hibernateDao.addUser(user);
		return SUCCESS;
	}

	public UserDTO getUserDTO() {
		return userDTO;
	}

	public void setUserDTO(UserDTO userDTO) {
		this.userDTO = userDTO;
	}
}
