package com.ol.action;

import com.ol.dao.userDAO;

import java.util.Map;

import com.ol.vo.Users;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class userAction extends ActionSupport{
Users u;

public Users getU() {
	return u;
}

public void setU(Users u) {
	this.u = u;
}
public String login(){
	userDAO nd=new userDAO();
	boolean jd=nd.login(u);	
	if(jd==true){
		Map session=ActionContext.getContext().getSession();
		session.put("login",u.getUsername());
		return "success";
		}
	else {
		
		return"fail";}
}
}
