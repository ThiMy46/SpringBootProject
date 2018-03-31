package com.daomy.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity(name="news")
public class News {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int news_id;
	private String title;
	private String content;
	@Temporal(TemporalType.TIMESTAMP)
	private Date date_create;
	private String accountname;
	
	public News(){
		
	}
	
	public News(int news_id){
		this.news_id=news_id;
	}
	
	public News(int news_id,String title, String content, Date date_create,String accountname) {
		super();
		this.news_id=news_id;
		this.title = title;
		this.content = content;
		this.date_create = date_create;
		this.accountname=accountname;
	}
	
	public int getNews_id() {
		return news_id;
	}
	public void setNews_id(int news_id) {
		this.news_id = news_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getDate_create() {
		return date_create;
	}
	public void setDate_create(Date date_create) {
		this.date_create = date_create;
	}

	public String getAccountname() {
		return accountname;
	}

	public void setAccountname(String accountname) {
		this.accountname = accountname;
	}
	
}
