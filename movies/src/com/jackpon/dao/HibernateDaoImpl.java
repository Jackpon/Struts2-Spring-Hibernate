package com.jackpon.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.jackpon.bean.Movies;
import com.jackpon.bean.User;
import com.opensymphony.xwork2.ActionContext;

import redis.clients.jedis.Jedis;



public class HibernateDaoImpl implements HibernateDao{

	@Override
	public void addUser(User user) {
		Session session=HibernateUtil.getCurrentSession();
		Transaction ts=session.beginTransaction();
		try {
			session.save(user);
			ts.commit();
		} catch (Exception e) {
			if (null!=ts) {
				ts.rollback();
				e.printStackTrace();
			}
		}
		HibernateUtil.closeSession();
	}

	@Override
	public int findUser(User user) {
		Session session=HibernateUtil.getCurrentSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from User where name=?");
		query.setParameter(0, user.getName());
		List<User> list=query.list();
		String passwd=list.get(0).getPassword();
		ts.commit();
		HibernateUtil.closeSession();
		if (passwd !=null && passwd.equals(user.getPassword())) {
			return 1;
		}
		return 0;
	}

	@Override
	public void add_UserLikeMovie(Movies movies) {
		Session session=HibernateUtil.getCurrentSession();
		Transaction ts=session.beginTransaction();
		try {
			session.save(movies);
			ts.commit();
		} catch (Exception e) {
			if (null!=ts) {
				ts.rollback();
				e.printStackTrace();
			}
		}
		HibernateUtil.closeSession();
	}

	@Override
	public int delete_UserLikeMovie(Movies movies) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Movies> find_Movie(Movies movies) {
		Session session=HibernateUtil.getCurrentSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from Movies where name like ?");
		query.setParameter(0, movies.getName()+"%");
		List<Movies> list=query.list();
		ts.commit();
		HibernateUtil.closeSession();
		return list;
	}

	@Override
	public List<Movies> getAllMovies(int page) {
		String hql = "from Movies where type=?";
		Session session=HibernateUtil.getCurrentSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery(hql);
		query.setParameter(0, "movies");
		query.setFirstResult((page-1)*Movies.PAGE_SIZE);
		query.setMaxResults(Movies.PAGE_SIZE);
		List<Movies> list=query.list();
		ts.commit();
		HibernateUtil.closeSession();
		return list;
	}

	@Override
	public int MoviesCount() {
		String hql="select count(*) from Movies";
		Session session=HibernateUtil.getCurrentSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery(hql);
		int count=((Number)query.uniqueResult()).intValue();
		ts.commit();
		HibernateUtil.closeSession();
		return count;  
	}

	@Override
	public List<Movies> getAllMovies(int page, int limit) {
		String hql = "from Movies";
		Session session=HibernateUtil.getCurrentSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery(hql);
		query.setFirstResult((page-1)*limit);
		query.setMaxResults(limit);
		List<Movies> list=query.list();
		ts.commit();
		HibernateUtil.closeSession();
		return list;
	}

	@Override
	public void delete(String name) {
		deleteById(name);
	}
	private void deleteById(String name) {
		 Jedis jedis = new Jedis("localhost");
		 Map session = ActionContext.getContext().getSession();
		 String key=(String) session.get("username");
		 jedis.lrem(key, 0, name);
		 jedis =null;
	}

	@Override
	public List<Movies> ilike() {
		Jedis jedis = new Jedis("localhost");
        Map s = ActionContext.getContext().getSession();
        String username=(String) s.get("username");
        System.out.println(username);
        List<String> list = jedis.lrange(username, 0 ,-1);
        
        List<Movies>  moviesList =new ArrayList<Movies>();
        Session session=HibernateUtil.getCurrentSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from Movies where name=?");
		for(int i=0; i<list.size(); i++) {
			query.setParameter(0,list.get(i));
			List<Movies> listm=query.list();
			moviesList.add(listm.get(0));
		}
		ts.commit();
		HibernateUtil.closeSession();
		return moviesList;
	}

	@Override
	public String addUserLike(Movies movies) {
		Jedis jedis = new Jedis("localhost");
        Map session = ActionContext.getContext().getSession();
        String username=(String) session.get("username");
        jedis.lpush(username, movies.getName());
        jedis = null;
		return "success";
	}
	
}
