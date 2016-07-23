package com.project.Database;

import java.util.*;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class Log {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	Long id;
	@Persistent
	String ip ;
	@Persistent
	Date logtime ;
	public Log(){
		
	}
	public Log(String ip , Date logtime){
		this.ip = ip ;
		this.logtime = logtime ;
	}
	public Long getId(){
		return this.id ;
	}
	public void setIp(String ip){
		this.ip = ip ;
	}
	public String getIp(){
		return this.ip ;
	}
	public void setLogtime(Date logtime){
		this.logtime = logtime ;
	}
	public Date getLogtime(){
		return this.logtime ;
	}
}
