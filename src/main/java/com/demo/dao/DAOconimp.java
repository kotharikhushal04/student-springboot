package com.demo.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.demo.model.logvo;

@Repository
public   class DAOconimp implements DAOcon {
	@Autowired SessionFactory sessionFactory;
		
	public void insert(logvo logvo)
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(logvo);
	}
	@Override
	public List search() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		
		Query q=session.createQuery("from logvo");
		
		List ls=q.list();
		
		return ls;
	}
	public void delete(logvo logvo) 
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.delete(logvo);
	}
	
	
	public List edit(logvo logvo)
	{
			Session session = sessionFactory.openSession();
			
			Query q=session.createQuery("from logvo where Id="+logvo.getId());
			
			List ls=q.list();
	
		return ls;
	}


}
