package com.ol.action;

import com.ol.dao.bookDAO;
import com.ol.dao.userDAO;

import java.util.List;
import java.util.Map;
import java.util.jar.Attributes.Name;

import com.ol.vo.Book;
import com.ol.vo.Borrow;
import com.ol.vo.Users;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;



public class bookAction extends ActionSupport{
	int isbn;
	String name;
	String username;
	Users u;
	Borrow b;
	public Borrow getB() {
		return b;
	}
	public void setB(Borrow b) {
		this.b = b;
	}
	public Users getU() {
		return u;
	}
	public void setU(Users u) {
		this.u = u;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getIsbn() {
		return isbn;
	}
	public void setIsbn(int isbn) {
		this.isbn = isbn;
	}
	List<Book> list;
	public List<Book> getList() {
	return list;
}
	public Book n;
public Book getN() {
		return n;
	}
	public void setN(Book n) {
		this.n = n;
	}
public void setList(List<Book> list) {
	this.list = list;
}	
	public String queryAll(){
		
		bookDAO nd=new bookDAO();
		list=nd.queryAll();
		return SUCCESS;
	}
	public String queryBook(){
		bookDAO nd=new bookDAO();
		list=nd.queryBook(name);
		return SUCCESS;
	}
	public String borrowOne(){
		bookDAO nd=new bookDAO();
		nd.borrowOne(n);
		return SUCCESS;
	}
	public String queryOne(){
		bookDAO nd=new bookDAO();
		n=nd.queryOne(isbn);
		return SUCCESS;
	}
	public String updateBorrow(){
		bookDAO nd=new bookDAO();
		nd.updateBorrow(n.getIsbn(),n.getLastaccess());
		return SUCCESS;
	}
	public String rshowOne(){
		bookDAO nd=new bookDAO();
		n=nd.rshowOne(isbn);
		return SUCCESS;
	}
	public String rtOne(){
		bookDAO nd=new bookDAO();
		nd.borrowOne(n);
		return SUCCESS;
	}
	public String updateReturn(){
		bookDAO nd=new bookDAO();
		nd.updateReturn(n.getLastid());
		return SUCCESS;
	}
	
}
