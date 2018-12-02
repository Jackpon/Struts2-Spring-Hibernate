package test;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

import action.newsAction;
import bean.Category;
import bean.News;
import dao.HibernateUtil;


public class test {

	public static void main(String[] args) {
		Category category=new Category();
		category.setId(1);
		category.setName("¾ü");
		Session session=HibernateUtil.getCurrentSession();
		Transaction ts=session.beginTransaction();
		try {
			session.update(category);
			ts.commit();
		} catch (Exception e) {
			if (null!=ts) {
				ts.rollback();
				e.printStackTrace();
			}
		}
		HibernateUtil.closeSession();
		
	}

}
