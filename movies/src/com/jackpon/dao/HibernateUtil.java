package com.jackpon.dao;

import org.hibernate.*;
import org.hibernate.cfg.*;
import org.hibernate.service.*;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.*;
 
 
/**
 * 该工具类提供了一个属性：SessionFactory sessionFactory 
 * 并创建了sessionFactory 将它设置成static 这样其他程序就可以直接通过此工具类引用
 * 提供了二个方法:
 * 1：通过线程创建Session-->currentSession()
 * 2：关闭Session-->closeSession()
 * 需要在主类中手动关闭sessionFactory
 */
public class HibernateUtil
{
	public static final SessionFactory sessionFactory;
	//创建sessionFactory
	static
	{
		try
		{
			ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().configure("/hibernate.cfg.xml").build();
            //创建会话工厂对象
            sessionFactory = new MetadataSources(serviceRegistry).buildMetadata().buildSessionFactory();
		}
		catch (Throwable ex)
		{
			System.err.println("Initial SessionFactory creation failed." + ex);
			throw new ExceptionInInitializerError(ex);
		}
	}
 
	// ThreadLocal可以隔离多个线程的数据共享，因此不再需要对线程同步
	public static final ThreadLocal<Session> session
		= new ThreadLocal<Session>();
	//创建Session
	public static Session getCurrentSession()
		throws HibernateException
	{
		//通过线程对象.get()方法安全创建Session
		Session s = session.get();
		// 如果该线程还没有Session,则创建一个新的Session
		if (s == null)
		{
			s = sessionFactory.openSession();
			// 将获得的Session变量存储在ThreadLocal变量session里
			session.set(s);
		}
		return s;
	}
	//关闭Session
	public static void closeSession()
		throws HibernateException
	{
		Session s = session.get();
		if (s != null)
			s.close();
		session.set(null);
	}
}

/*Session session = HibernateUtil.getCurrentSession();
// 打开事务
Transaction ts = session.beginTransaction();
// 创建Person对象
PersonMap person = new PersonMap();
person.setName("VipMao");
session.save(person);
ts.commit();
//通过工具类关闭Session
HibernateUtil.closeSession();*/