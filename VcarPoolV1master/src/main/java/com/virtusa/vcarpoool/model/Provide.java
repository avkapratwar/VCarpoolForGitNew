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
@Table(name="provide2")
public class Provide {
	@Id
	@Column(name="poolid")
	private int poolId;
	@Column(name = "employeeId")
	private int employeeId;
	@Column(name = "source")
	private String source;
	@Column(name = "destination")
	private String destination;
	@Column(name = "startTime")
	private String startTime;
	@Column(name = "returnTime")
	private String returnTime;
	@Column(name = "noOfSeats")
	private int noOfSeats;
	@Column(name = "status")
	private String status;
	
	@Column(name ="currentDate")
	private String currentDate;

	/**
	 * @return
	 */
	public int getPoolId() {
		return poolId;
	}

	/**
	 * @param poolId
	 */
	public void setPoolId(int poolId) {
		this.poolId = poolId;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Provide [poolId=" + poolId + ", employeeId=" + employeeId + ", source=" + source + ", destination="
				+ destination + ", startTime=" + startTime + ", returnTime=" + returnTime + ", noOfSeats=" + noOfSeats
				+ ", status=" + status + ", currentDate=" + currentDate + "]";
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

	/**
	 * @return
	 */
	public String getSource() {
		return source;
	}

	/**
	 * @param source
	 */
	public void setSource(String source) {
		this.source = source;
	}

	/**
	 * @return
	 */

	public String getDestination() {
		return destination;
	}

	/**
	 * @param destination
	 */
	public void setDestination(String destination) {
		this.destination = destination;
	}

	/**
	 * @return
	 */
	public String getStartTime() {
		return startTime;
	}

	/**
	 * @param startTime
	 */
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	/**
	 * @return
	 */
	public String getReturnTime() {
		return returnTime;
	}

	/**
	 * @param returnTime
	 */
	public void setReturnTime(String returnTime) {
		this.returnTime = returnTime;
	}

	/**
	 * @return
	 */
	public int getNoOfSeats() {
		return noOfSeats;
	}

	/**
	 * @param noOfSeats
	 */
	public void setNoOfSeats(int noOfSeats) {
		this.noOfSeats = noOfSeats;
	}

	/**
	 * @return
	 */
	public String getStatus() {
		return status;
	}

	/**
	 * @param status
	 */
	public void setStatus(String status) {
		this.status = status;
	}

	/**
	 * @return
	 */
	public String getCurrentDate() {
		return currentDate;
	}

	/**
	 * @param currentDate
	 */
	public void setCurrentDate(String currentDate) {
		this.currentDate = currentDate;
	}

}
