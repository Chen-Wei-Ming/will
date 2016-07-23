package com.project.Database;

import java.util.Date;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class Feeback {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	Long id;
	@Persistent
	String name ;
	@Persistent
	String email ;
	@Persistent
	String message ;
	@Persistent
	String ip ;
	@Persistent
	Date sendtime ;
	
	public Feeback(){
		
	}
	public Feeback(String name , String email , String message , String ip , Date sendtime){
		this.name = name ;
		this.email = email ;
		this.message = message ;
		this.ip = ip ;
		this.sendtime = sendtime ;
	}
	public Long getId(){
		return this.id ;
	}
	public void setName(String name){
		this.name = name ;
	}
	public String getName(){
		return this.name ;
	}
	public void setEmail(String email){
		this.email = email ;
	}
	public String getEmail(){
		return this.email ;
	}
	public void setMessage(String message){
		this.message = message ;
	}
	public String getMessage(){
		return this.message ;
	}
	public void setIp(String ip){
		this.ip = ip ;
	}
	public String getIp(){
		return this.ip ;
	}
	public void setLogtime(Date sendtime){
		this.sendtime = sendtime ;
	}
	public Date getLogtime(){
		return this.sendtime ;
	}
}
