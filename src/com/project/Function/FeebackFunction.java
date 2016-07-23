package com.project.Function;

import java.util.Date;

import javax.jdo.PersistenceManager;

import com.project.Database.Feeback;

public class FeebackFunction {
	PersistenceManager persistenceManager = FunctionCall.persistenceManager ;
	public void addFeeback(String name , String email , String message , String ip){
		try{
			Date now = new Date() ;
			Feeback feeback = new Feeback(name, email, message, ip, now) ;
			persistenceManager.makePersistent(feeback);
			FunctionCall.message = "訊息成功送出" ;
		}catch(Exception e){
			FunctionCall.message = e.getMessage() ;	
		}
	}
}
