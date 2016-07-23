package com.project.Function;

import java.util.List;
import java.util.Date;
import java.util.TimeZone;

import javax.jdo.PersistenceManager;

import com.project.PMF;
import com.project.Database.Feeback;
import com.project.Database.Log;

public class FunctionCall {
	static PersistenceManager persistenceManager = PMF.get().getPersistenceManager();
	static TimeZone taipei_timezone = TimeZone.getTimeZone("GMT+8:00");
	static String message;
	LogFunction logFunction = new LogFunction() ;
	FeebackFunction feebackFunction = new FeebackFunction();
	public FunctionCall(){
		TimeZone.setDefault(taipei_timezone);
	}
	public void addLog(String ip){
		logFunction.addLog(ip) ;
	}
	public String[] getAllLogIP(){
		return logFunction.getAllLogIP() ;
	}
	public String[] getAllLogTime(){
		return logFunction.getAllLogTime() ;
	}
	public int getLogSize(){
		return logFunction.getLogSize() ;
	}
	public void addFeeback(String name , String email , String message , String ip){
		feebackFunction.addFeeback(name, email, message, ip);
	}
	public void setMessage(String message){
		this.message = message ;
	}
	public String getMessage(){
		return this.message ;
	}
}
