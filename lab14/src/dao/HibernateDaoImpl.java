package dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import bean.Category;
import bean.News;

public class HibernateDaoImpl implements HibernateDao{

	@Override
	public void addType(Category c) {
		Session session=HibernateUtil.getCurrentSession();
		Transaction ts=session.beginTransaction();
		try {
			session.save(c);
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
	public int deleteType(Category c) {
		Session session=HibernateUtil.getCurrentSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("delete from Category where id=?");
		query.setInteger(0, c.getId());
		int count=query.executeUpdate();
		ts.commit();
		HibernateUtil.closeSession();
		return count;
	}

	@Override
	public void updateType(Category c) {
		Session session=HibernateUtil.getCurrentSession();
		Transaction ts=session.beginTransaction();
		try {
			session.update(c);
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
	public List<Category> findType() {
		Session session=HibernateUtil.getCurrentSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from Category");
		List<Category> list=query.list();
		ts.commit();
		HibernateUtil.closeSession();
		return list;
	}
	@Override
	public List<Category> findTypeById(Category c) {
		Session session=HibernateUtil.getCurrentSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from Category where id=?");
		query.setInteger(0, c.getId());
		List<Category> list=query.list();
		ts.commit();
		HibernateUtil.closeSession();
		return list;
	}

	@Override
	public void addNew(News n) {
		Session session=HibernateUtil.getCurrentSession();
		Transaction ts=session.beginTransaction();
		try {
			session.save(n);
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
	public int deleteNew(News n) {
		Session session=HibernateUtil.getCurrentSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("delete from News where id=?");
		query.setInteger(0, n.getId());
		int count=query.executeUpdate();
		ts.commit();
		HibernateUtil.closeSession();
		return count;
	}

	@Override
	public void updateNew(News n) {
		Session session=HibernateUtil.getCurrentSession();
		Transaction ts=session.beginTransaction();
		try {
			session.update(n);
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
	public List<News> findNew() {
		Session session=HibernateUtil.getCurrentSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from News");
		List<News> list=query.list();
		ts.commit();
		HibernateUtil.closeSession();
		return list;
	}

	@Override
	public List<News> findNewById(News n) {
		Session session=HibernateUtil.getCurrentSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from News where id=?");
		query.setInteger(0, n.getId());
		List<News> list=query.list();
		ts.commit();
		HibernateUtil.closeSession();
		return list;
	}

	@Override
	public List<News> findNewByType(News n) {
		Session session=HibernateUtil.getCurrentSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from News where type like ?");
		query.setString(0, n.getType()+"%");
		List<News> list=query.list();
		ts.commit();
		HibernateUtil.closeSession();
		return list;
	}
}
