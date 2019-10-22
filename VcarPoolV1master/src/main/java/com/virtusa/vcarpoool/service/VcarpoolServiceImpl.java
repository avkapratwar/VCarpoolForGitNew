package com.virtusa.vcarpoool.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.virtusa.vcarpoool.dao.VcarpoolDaoIface;
import com.virtusa.vcarpoool.model.Employee;
import com.virtusa.vcarpoool.model.FindRide;
import com.virtusa.vcarpoool.model.Provide;


/**
 * @author amruthar
 *
 */
@Service
public class VcarpoolServiceImpl implements VcarpoolServiceIface {
	@Autowired
	VcarpoolDaoIface vcarpoolDaoIface;

	/**
	 *
	 */
	@Transactional
	public List<Provide> numberOfRidesService(String src, String des, int noseats) {
		return vcarpoolDaoIface.numberOfRides(src, des, noseats);
	}
  
	/**
	 *
	 */
	public int updateSeatsService(int poolid, int noseats,int num) {
		return vcarpoolDaoIface.updateSeatsService(poolid, noseats, num);
	}

	/**
	 *
	 */
	public Boolean sendEmail(String toMailRider, String toMailProvider, int bookId, Provide provider,int numberofseats,
			long contactnoProvider, long contactnoRider) {
	
		return vcarpoolDaoIface.sendEmail(toMailRider, toMailProvider, bookId, provider,numberofseats, contactnoProvider, contactnoRider);
	}

	/**
	 *
	 */
	public Employee emailIdDetails(int empid) {
		return vcarpoolDaoIface.emailIdDetails(empid);
	}

	

	/**
	 *
	 */
	public int saveFind(FindRide find) {
		
		return vcarpoolDaoIface.saveFind(find);
	}

	
	
	
	/**
	 *
	 */
	public Boolean addEmployee(Employee employee) {
		return vcarpoolDaoIface.addEmployee(employee);
	}

	/**
	 *
	 */
	public Employee authenticateEmployee(int employeeid, String pass) {
		return vcarpoolDaoIface.authenticateEmployee(employeeid, pass);
	}

	/**
	 *
	 */
	public Provide getPoolDetails(int employeeid) {
		return vcarpoolDaoIface.getPoolDetails(employeeid);
	}

	/**
	 *
	 */
	public int generatePoolId() {
		return vcarpoolDaoIface.autoGeneratePoolId();
	}

	/**
	 *
	 */

	public Boolean createPool(Provide provider) {
		return vcarpoolDaoIface.createPool(provider);
	}

	/**
	 *
	 */
	public Employee checkEmployee(Employee employee) {
		return vcarpoolDaoIface.checkEmployee(employee);
	}

	/**
	 *
	 */
	public Boolean updatePass(int employeeid, String pass) {
		return vcarpoolDaoIface.updatePass(employeeid, pass);
	}

}
