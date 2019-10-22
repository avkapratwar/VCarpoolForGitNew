package com.virtusa.vcarpoool.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author amruthar
 *
 */
@Entity
@Table(name = "findride1")
public class FindRide {
	@Id
	@Column(name = "bookingid")
	private int bookingId;
	@Column(name = "source")
	private String rsource;
	@Column(name = "destination")
	private String rdestination;
	@Column(name = "starttime")
	private String rstartTime;
	@Column(name = "returntime")
	private String rreturnTime;
	@Column(name = "noofseats")
	private int rnoOfSeats;
	@Column(name = "status")
	private String rstatus;
	@Column(name = "usertype")
	private String userType;
	
	@Column(name="employeeid")
	private int employeeId;
	/**
	 * @return
	 */
	public int getBookingId() {
		return bookingId;
	}
	/**
	 * @param bookingId
	 */
	public void setBookingId(int bookingId) {
		this.bookingId = bookingId;
	}
	/**
	 * @return
	 */
	public String getRsource() {
		return rsource;
	}
	/**
	 * @param rsource
	 */
	public void setRsource(String rsource) {
		this.rsource = rsource;
	}
	/**
	 * @return
	 */
	public String getRdestination() {
		return rdestination;
	}
	/**
	 * @param rdestination
	 */
	public void setRdestination(String rdestination) {
		this.rdestination = rdestination;
	}
	/**
	 * @return
	 */
	public String getRstartTime() {
		return rstartTime;
	}
	/**
	 * @param rstartTime
	 */
	public void setRstartTime(String rstartTime) {
		this.rstartTime = rstartTime;
	}
	/**
	 * @return
	 */
	public String getRreturnTime() {
		return rreturnTime;
	}
	/**
	 * @param rreturnTime
	 */
	public void setRreturnTime(String rreturnTime) {
		this.rreturnTime = rreturnTime;
	}
	/**
	 * @return
	 */
	public int getRnoOfSeats() {
		return rnoOfSeats;
	}
	/**
	 * @param rnoOfSeats
	 */
	public void setRnoOfSeats(int rnoOfSeats) {
		this.rnoOfSeats = rnoOfSeats;
	}
	/**
	 * @return
	 */
	public String getRstatus() {
		return rstatus;
	}
	/**
	 * @param rstatus
	 */
	public void setRstatus(String rstatus) {
		this.rstatus = rstatus;
	}
	/**
	 * @return
	 */
	public String getUserType() {
		return userType;
	}
	/**
	 * @param userType
	 */
	public void setUserType(String userType) {
		this.userType = userType;
	}
	/**
	 * @return
	 */
	public int getEmployeeId() {
		return employeeId;
	}
	/**
	 * @param employeeId
	 */
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}

}
