package com.project.Function;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import com.project.Database.Log;

public class LogFunction {
	PersistenceManager persistenceManager = FunctionCall.persistenceManager ;
	public void addLog(String ip){
		try{
			Date now = new Date();
			Log log = new Log(ip , now) ;
			persistenceManager.makePersistent(log);
		}catch(Exception e){
			FunctionCall.message = e.getMessage() ;
		}
	}
	public String[] getAllLogIP(){
		String[] ipArray = new String[getLogSize()] ;
		List<String> logIPList = new ArrayList<String>() ;
		try{
			Query logQuery = persistenceManager.newQuery(Log.class);
			logQuery.declareImports("import java.util.Date;");
			logQuery.setOrdering("this.logtime desc");
			List<Log> logList = (List<Log>)logQuery.execute();
			for(int index = 0 ; index < logList.size() ; index++){
				String[] tempIPArray = logList.get(index).getIp().split("\\.") ;
				logIPList.add(tempIPArray[0]+"."+tempIPArray[1]+".XXX.XXX") ;
			}
			logIPList.toArray(ipArray) ;
			return ipArray ;
		}catch(Exception e){
			FunctionCall.message = e.getMessage() ;
			return ipArray ;
		}
	}
	public String[] getAllLogTime(){
		String[] timeArray = new String[getLogSize()] ;
		List<String> logIPList = new ArrayList<String>() ;
		try{
			Query logQuery = persistenceManager.newQuery(Log.class) ;
			logQuery.declareImports("import java.util.Date;");
			logQuery.setOrdering("this.logtime desc");
			List<Log> logList = (List<Log>)logQuery.execute();
			for(int index = 0 ; index < logList.size() ; index++){
				logIPList.add(logList.get(index).getLogtime().toString()) ;
			}
			logIPList.toArray(timeArray) ;
			return timeArray ;
		}catch(Exception e){
			FunctionCall.message = e.getMessage() ;
			return timeArray ;
		}
	}
	public int getLogSize(){
		try{
			Query logQuery = persistenceManager.newQuery(Log.class) ;
			List<Log> logList = (List<Log>)logQuery.execute();
			return logList.size() ;
		}catch(Exception e){
			FunctionCall.message = e.getMessage() ;
			return 0 ;
		}
	}
}
