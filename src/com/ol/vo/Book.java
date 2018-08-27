package com.ol.vo;

/**
 * Book entity. @author MyEclipse Persistence Tools
 */

public class Book implements java.io.Serializable {

	// Fields

	private Integer isbn;
	private String name;
	private Integer price;
	private Short stock;
	private String lastaccess;
	private Integer lastid;

	// Constructors

	/** default constructor */
	public Book() {
	}

	/** minimal constructor */
	public Book(Integer isbn, Short stock) {
		this.isbn = isbn;
		this.stock = stock;
	}

	/** full constructor */
	public Book(Integer isbn, String name, Integer price, Short stock, String lastaccess, Integer lastid) {
		this.isbn = isbn;
		this.name = name;
		this.price = price;
		this.stock = stock;
		this.lastaccess = lastaccess;
		this.lastid = lastid;
	}

	// Property accessors

	public Integer getIsbn() {
		return this.isbn;
	}

	public void setIsbn(Integer isbn) {
		this.isbn = isbn;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getPrice() {
		return this.price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Short getStock() {
		return this.stock;
	}

	public void setStock(Short stock) {
		this.stock = stock;
	}

	public String getLastaccess() {
		return this.lastaccess;
	}

	public void setLastaccess(String lastaccess) {
		this.lastaccess = lastaccess;
	}

	public Integer getLastid() {
		return this.lastid;
	}

	public void setLastid(Integer lastid) {
		this.lastid = lastid;
	}

}