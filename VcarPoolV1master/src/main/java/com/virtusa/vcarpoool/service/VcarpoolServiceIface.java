package com.virtusa.vcarpoool.service;

import java.util.List;

import com.virtusa.vcarpoool.model.Employee;
import com.virtusa.vcarpoool.model.FindRide;
import com.virtusa.vcarpoool.model.Provide;


/**
 * @author amruthar
 *
 */
public interface VcarpoolServiceIface {
	List<Provide> numberOfRidesService(String src, String des, int noseats);
	int updateSeatsService(int poolid,int noseats,int num);
	Boolean sendEmail(String toMailRider, String toMailProvider, int bookId, Provide provider,int numberofseats,
			long contactnoProvider, long contactnoRider);
	int saveFind(FindRide find);
	Employee emailIdDetails(int empid);
	Boolean addEmployee(Employee employee);
	Employee authenticateEmployee(int employeeid,String pass);
	Provide getPoolDetails(int employeeid);
	int generatePoolId();
	Boolean createPool(Provide provider);
	Employee checkEmployee(Employee employee);
	Boolean updatePass(int employeeid,String pass);
}
