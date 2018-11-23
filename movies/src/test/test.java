package test;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.jackpon.bean.Movies;
import com.jackpon.bean.User;
import com.jackpon.dao.HibernateDao;
import com.jackpon.dao.HibernateDaoImpl;
import com.jackpon.dao.HibernateUtil;
import com.opensymphony.xwork2.ActionContext;

import redis.clients.jedis.Jedis;


public class test {
	private static HibernateDao hibernateDao=new HibernateDaoImpl();
	public static void main(String[] args) {
		
		/*User user=new User();
		user.setId(1);
		user.setName("jack");
		user.setPassword("jack");
		hibernateDao.addUser(user);
		//System.out.println(hibernateDao.findUser(user));
*/		
		Jedis jedis = new Jedis("localhost");
        String username="jack";
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
		
	}

}
