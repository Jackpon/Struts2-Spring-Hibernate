package com.jackpon.dao;

import org.hibernate.*;
import org.hibernate.cfg.*;
import org.hibernate.service.*;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.*;
 
 
/**
 * �ù������ṩ��һ�����ԣ�SessionFactory sessionFactory 
 * ��������sessionFactory �������ó�static ������������Ϳ���ֱ��ͨ���˹���������
 * �ṩ�˶�������:
 * 1��ͨ���̴߳���Session-->currentSession()
 * 2���ر�Session-->closeSession()
 * ��Ҫ���������ֶ��ر�sessionFactory
 */
public class HibernateUtil
{
	public static final SessionFactory sessionFactory;
	//����sessionFactory
	static
	{
		try
		{
			ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().configure("/hibernate.cfg.xml").build();
            //�����Ự��������
            sessionFactory = new MetadataSources(serviceRegistry).buildMetadata().buildSessionFactory();
		}
		catch (Throwable ex)
		{
			System.err.println("Initial SessionFactory creation failed." + ex);
			throw new ExceptionInInitializerError(ex);
		}
	}
 
	// ThreadLocal���Ը������̵߳����ݹ�����˲�����Ҫ���߳�ͬ��
	public static final ThreadLocal<Session> session
		= new ThreadLocal<Session>();
	//����Session
	public static Session getCurrentSession()
		throws HibernateException
	{
		//ͨ���̶߳���.get()������ȫ����Session
		Session s = session.get();
		// ������̻߳�û��Session,�򴴽�һ���µ�Session
		if (s == null)
		{
			s = sessionFactory.openSession();
			// ����õ�Session�����洢��ThreadLocal����session��
			session.set(s);
		}
		return s;
	}
	//�ر�Session
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
// ������
Transaction ts = session.beginTransaction();
// ����Person����
PersonMap person = new PersonMap();
person.setName("VipMao");
session.save(person);
ts.commit();
//ͨ��������ر�Session
HibernateUtil.closeSession();*/