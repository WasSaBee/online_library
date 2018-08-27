package com.ol.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ol.vo.*;



public class bookDAO {

	public List<Book> queryAll(){
		Session session=HibernateSessionFactory.getSession();
		Query query=session.createQuery(" from Book b where b.stock >0");
		List<Book> list=query.list();
		session.close();
		return list;
	}
	public List<Book> queryBook(String name){
		Session session=HibernateSessionFactory.getSession();
		Query query=session.createQuery("from Borrow b where b.username like ?");
		query.setParameter(0,name);
		List<Book> list=query.list();
		session.close();
		return list;
	}
	public void borrowOne(Book n){
		Session session=HibernateSessionFactory.getSession();
		Transaction tx=session.beginTransaction();
		session.merge(n);
		tx.commit();
		session.close();
	}
	public Book queryOne(int isbn){
		
		Session session=HibernateSessionFactory.getSession();
		Book n=(Book)session.get(Book.class, isbn);
		return n;
	}
	public void updateBorrow(int isbn,String nickname){
		Borrow c=new Borrow();
		c.setIsbn(isbn);c.setUsername(nickname);
		Session session=HibernateSessionFactory.getSession();
		Transaction tx=session.beginTransaction();
		session.save(c);
		tx.commit();
		session.close();
	}
	public Book rshowOne(int isbn){
		
		Session session=HibernateSessionFactory.getSession();
		Book n=(Book)session.get(Book.class, isbn);
		return n;
	}
	public void updateReturn(int id){
	
			Session session=HibernateSessionFactory.getSession();
			Transaction tx=session.beginTransaction();
			Borrow n=(Borrow)session.get(Borrow.class,id);
			session.delete(n);
			tx.commit();
			session.close();
		
	}
}
