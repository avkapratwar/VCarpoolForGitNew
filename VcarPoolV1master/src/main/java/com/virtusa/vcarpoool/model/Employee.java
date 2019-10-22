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
@Table(name="userregister1")

public class Employee {
	/**
	 *
	 */
	@Override
	public String toString() {
		return "Employee [employeeId=" + employeeId + ", employeeName=" + employeeName + ", employeeEmailId="
				+ employeeEmailId + ", passkey=" + passkey + ", employeeOccupation=" + employeeOccupation
				+ ", employeeCountry=" + employeeCountry + ", employeeCity=" + employeeCity + ", employeeGender="
				+ employeeGender + ", employeeMobileNo=" + employeeMobileNo + ", securityQuestion=" + securityQuestion
				+ ", securityAnswer=" + securityAnswer + "]";
	}
	@Id
	@Column(name="employeeid")
	private int employeeId;
	@Column(name = "name")
	private String employeeName;
	@Column(name = "emailid")
	private String employeeEmailId; 
	@Column(name = "password")
	private String passkey;
	@Column(name = "occupation")
	private String employeeOccupation;
	@Column(name = "country")
	private String employeeCountry;
	@Column(name = "city")
	private String employeeCity;
	@Column(name = "gender")
	private String employeeGender;
	@Column(name = "mobile")
	private long employeeMobileNo;
	@Column(name = "sq")
	private String securityQuestion;
	@Column(name = "sa")
	private String securityAnswer;
	
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
	public String getEmployeeName() {
		return employeeName;
	}
	/**
	 * @param employeeName
	 */
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	/**
	 * @return
	 */
	public String getEmployeeEmailId() {
		return employeeEmailId;
	}
	/**
	 * @param employeeEmailId
	 */
	public void setEmployeeEmailId(String employeeEmailId) {
		this.employeeEmailId = employeeEmailId;
	}
	/**
	 * @return
	 */
	public String getPasskey() {
		return passkey;
	}
	/**
	 * @param passkey
	 */
	public void setPasskey(String passkey) {
		this.passkey = passkey;
	}
	/**
	 * @return
	 */
	public String getEmployeeOccupation() {
		return employeeOccupation;
	}
	/**
	 * @param employeeOccupation
	 */
	public void setEmployeeOccupation(String employeeOccupation) {
		this.employeeOccupation = employeeOccupation;
	}
	/**
	 * @return
	 */
	public String getEmployeeCountry() {
		return employeeCountry;
	}
	/**
	 * @param employeeCountry
	 */
	public void setEmployeeCountry(String employeeCountry) {
		this.employeeCountry = employeeCountry;
	}
	/**
	 * @return
	 */
	public String getEmployeeCity() {
		return employeeCity;
	}
	/**
	 * @param employeeCity
	 */
	public void setEmployeeCity(String employeeCity) {
		this.employeeCity = employeeCity;
	}
	/**
	 * @return
	 */
	public String getEmployeeGender() {
		return employeeGender;
	}
	/**
	 * @param employeeGender
	 */
	public void setEmployeeGender(String employeeGender) {
		this.employeeGender = employeeGender;
	}
	/**
	 * @return
	 */
	public long getEmployeeMobileNo() {
		return employeeMobileNo;
	}
	/**
	 * @param employeeMobileNo
	 */
	public void setEmployeeMobileNo(long employeeMobileNo) {
		this.employeeMobileNo = employeeMobileNo;
	}
	/**
	 * @return
	 */
	public String getSecurityQuestion() {
		return securityQuestion;
	}
	/**
	 * @param securityQuestion
	 */
	public void setSecurityQuestion(String securityQuestion) {
		this.securityQuestion = securityQuestion;
	}
	/**
	 * @return
	 */
	public String getSecurityAnswer() {
		return securityAnswer;
	}
	/**
	 * @param securityAnswer
	 */
	public void setSecurityAnswer(String securityAnswer) {
		this.securityAnswer = securityAnswer;
	}
	
}
	