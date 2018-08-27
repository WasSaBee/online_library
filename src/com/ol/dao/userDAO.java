package com.ol.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.ol.vo.HibernateSessionFactory;
import com.ol.vo.Users;

public class userDAO {
public boolean login(Users u) {
	boolean flag=false;
	Session session=HibernateSessionFactory.getSession();
	Query query=session.createQuery("from Users u where u.username=? and u.password=?");
	query.setParameter(0, u.getUsername());
	query.setParameter(1,u.getPassword());
	List list=query.list();
	session.close();
	if(list.size()>0)
		flag=true;
	return flag;
}
}
