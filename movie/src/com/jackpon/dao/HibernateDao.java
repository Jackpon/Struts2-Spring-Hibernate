package com.jackpon.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate5.HibernateCallback;
import org.springframework.stereotype.Component;

import com.jackpon.bean.Movies;
import com.jackpon.bean.User;
import com.opensymphony.xwork2.ActionContext;

import redis.clients.jedis.Jedis;
@Component("hibernateDao")
public class HibernateDao extends SuperDAO{

	public void addUser(User user) {
		this.getHibernateTemplate().save(user);
	}

	public int findUser(User user) {
		List<User> list =(List<User>) this.getHibernateTemplate().find("from User where name=?0", user.getName());
		String passwd=list.get(0).getPassword();
		if (passwd !=null && passwd.equals(user.getPassword())) {
			return 1;
		}
		return 0;
	}

	public void add_UserLikeMovie(Movies movies) {
		this.getHibernateTemplate().save(movies);
	}

	public int delete_UserLikeMovie(Movies movies) {
		// TODO Auto-generated method stub
		return 0;
	}

	public List<Movies> find_Movie(Movies movies) {
		List<Movies> list=(List<Movies>) this.getHibernateTemplate().find("from Movies where name like ?0", movies.getName()+"%");
		return list;
	}

	public List<Movies> getAllMovies(int page) {
		final String hql="from Movies where type=?0"; 
		final int offset=(page-1)*Movies.PAGE_SIZE;
		final int length=Movies.PAGE_SIZE;
		return getListForPage(hql, offset, length);
	}

	public int MoviesCount() {
		Long count=(Long) this.getHibernateTemplate().find("select count(*) from Movies").listIterator().next();
		return count.intValue();  
	}

	public List<Movies> getAllMovies(int page, int limit) {
		List<Movies> list=(List<Movies>) this.getHibernateTemplate().find("from Movies");
		return list;
	}

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

	public List<Movies> ilike() {
		Jedis jedis = new Jedis("localhost");
        Map s = ActionContext.getContext().getSession();
        String username=(String) s.get("username");
        System.out.println(username);
        List<String> list = jedis.lrange(username, 0 ,-1);
        
        List<Movies>  moviesList =new ArrayList<Movies>();
		for(int i=0; i<list.size(); i++) {
			List<Movies> listm=(List<Movies>) this.getHibernateTemplate().find("from Movies where name=?0", list.get(i));
			moviesList.add(listm.get(0));
		}
		return moviesList;
	}

	public String addUserLike(Movies movies) {
		Jedis jedis = new Jedis("localhost");
        Map session = ActionContext.getContext().getSession();
        String username=(String) session.get("username");
        jedis.lpush(username, movies.getName());
        jedis = null;
		return "success";
	}
	public List<Movies> getListForPage(final String hql, final int offset,final int length){
		List<Movies> list = getHibernateTemplate().execute(
			new HibernateCallback() {
				public Object doInHibernate(Session session) throws HibernateException {
				Query query = session.createQuery(hql);
				query.setParameter(0, "movies");
				query.setFirstResult(offset);
				query.setMaxResults(length);
				List<Movies> list = query.list();
				return list;
				}
			}
		);
		return list;
	}
}
