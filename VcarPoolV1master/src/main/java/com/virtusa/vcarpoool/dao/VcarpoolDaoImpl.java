package com.virtusa.vcarpoool.dao;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.persistence.Temporal;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.virtusa.vcarpoool.model.Employee;
import com.virtusa.vcarpoool.model.FindRide;
import com.virtusa.vcarpoool.model.Provide;

import org.hibernate.annotations.Generated;
import org.hibernate.annotations.GenerationTime;

/**
 * @author amruthar
 *
 */
@Repository
public class VcarpoolDaoImpl implements VcarpoolDaoIface {
	private static final String GETPOOLDETAILS = "FROM Provide WHERE employeeid = :employee_id and status='Active'";
	private static final String GETEMPLOYEEDETAILS = "FROM Employee WHERE employeeId=:employee_id and password=:pass";
	private static final String GENERATEPOOLID = "FROM Provide";
	private static final String CHECKEMPLOYEE = "FROM Employee WHERE employeeid=:employee_id and sq=:sq AND sa=:sa";
	private static final String UPDATEPASS = "update Employee set password=:pass where employeeid=:empid";
	private static final String NUMBEROFRIDES = "from Provide where source = :source  and destination = :destination and noofseats >= :noOfSeats "
			+ "and lower(status) = 'active' and currentdate = :curr";
	private static final String UPDATESEATS = "update Provide set noOfSeats=:no where poolId=:poolid";
	private static final String EMAILIDDETAILS = "from Employee where employeeid =:empid";
	// private static final String SAVERIDE = "Select max(bookingId) from FindRide";
	private static final String BOOKINGID = "from FindRide";
	private static final String EMPID = "employee_id";
	boolean returnstmt = true;

	static Logger logger = Logger.getLogger(VcarpoolDaoImpl.class);

	@Autowired
	SessionFactory sessionFactory;

	public VcarpoolDaoImpl(SessionFactory sessionFactory) {
		super();
		logger.info("session factory inatialized");
		this.sessionFactory = sessionFactory;

	}

	/**
	 * @return
	 */
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	/**
	 * @param sessionFactory
	 */
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Generated(GenerationTime.ALWAYS)
	@Temporal(javax.persistence.TemporalType.DATE)
	Date dateoperation = new java.sql.Date(new java.util.Date().getTime());

	/**
	 *
	 */
	@Transactional
	public List<Provide> numberOfRides(String src, String des, int noseats) {
		Query q = this.getSessionFactory().getCurrentSession().createQuery(NUMBEROFRIDES);
		q.setParameter("source", src);
		q.setParameter("destination", des);
		q.setParameter("noOfSeats", noseats);
		Date d = new Date();
		String pattern = "dd-MMM-yy";
		SimpleDateFormat dt = new SimpleDateFormat(pattern);
		String d1 = dt.format(d);
		q.setParameter("curr", d1);
		logger.info("numberOfRides() executed");
		return q.list();
	}

	/**
	 *
	 */
	@Transactional
	public int updateSeatsService(int poolid, int noseats, int num) {
		logger.info("inside UpdateSeatsService()");
		int no = 0;
		no = noseats - num;
		try {
			Query q = this.getSessionFactory().getCurrentSession().createQuery(UPDATESEATS);
			q.setParameter("no", no);
			q.setParameter("poolid", poolid);
			logger.info("updateSeatsService() executed");
			return q.executeUpdate();
		} catch (NullPointerException e) {
			logger.error(e.getMessage());
			logger.error("updateSeatsService() not executed");
			return 0;
		}
	}

	static class Authent extends Authenticator {

	}

	/**
	 *
	 */
	public Boolean sendEmail(String toMailRider, String toMailProvider, int bookId, Provide provider, int numberofseats,
			long contactnoProvider, long contactnoRider) {

		logger.info("inside sendEmail()");
		String from = "SENDER EMAIL ID HERE";
		final String userName = "SENDER EMAIL ID HERE";
		final String pass = "PASSWORD";
		//System.out.println("fsdfds");
		// sending email through relay.jangosmtp.net
		String host = "smtp.gmail.com";
		Properties props = new Properties();
		props.put(" mail.smtp.connectiontimeout", 100000);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.ssl.trust", "*");
		props.setProperty("mail.smtp.host", host);
		props.setProperty("mail.smtp.port", "587");

		// Get the Session object.
		javax.mail.Session mailSession = javax.mail.Session.getInstance(props, new Authent() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				// System.out.println("valid");
				logger.info("Anonymous class executed");
				return new PasswordAuthentication(userName, pass);
			}
		});

		try {
			// Create a default MimeMessage object.
			Message message = new MimeMessage(mailSession);
			Message messageProvider = new MimeMessage(mailSession);

			// Set From: header field of the header.
			message.setFrom(new InternetAddress(from));

			// Set To: header field of the header.
			// send msg to rider
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toMailRider));

			// send mail to provider
			messageProvider.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toMailProvider));

			// Set Subject: header field
			message.setSubject("VCarPool Booking");
			messageProvider.setSubject("VCarPool Book, Pool details");

			// Now set the actual message
			// send details of provider to rider
			message.setText(" Yay! Your Ride Has Been Booked With VCarPool....  \n \n Booking ID:" + bookId
					+ "\n Pool ID: " + provider.getPoolId() + "\n From:" + provider.getSource() + "\n To:"
					+ provider.getDestination() + "\n Number of Seats:" + numberofseats + " \n Provider Contact:"
					+ contactnoProvider);

			// send details of rider to provider
			messageProvider.setText(" Yay! Your Booking With VCarPool is done \n \n Booking ID:" + bookId
					+ "\n Pool ID: " + provider.getPoolId() + "\n From:" + provider.getSource() + "\n To:"
					+ provider.getDestination() + "\n Number of Seats:" + numberofseats + " \n Rider Contact:"
					+ contactnoRider);

			// Send message
			Transport.send(message);
			Transport.send(messageProvider);
			logger.info("sendEmail() executed");
			return returnstmt;
		} catch (AddressException e) {
			logger.error("Address Exception");
			logger.error(e.getMessage());
			e.printStackTrace();
		} catch (MessagingException e) {
			logger.error("MessasingException");
			logger.error(e.getMessage());
		}
		return true;

	}

	/**
	 *
	 */
	@Transactional
	public Employee emailIdDetails(int empid) {
		logger.info("inside emailDetails()");
		Query q = this.getSessionFactory().getCurrentSession().createQuery(EMAILIDDETAILS);
		q.setParameter("empid", empid);
		logger.info("emailDetails() executed");
		return (Employee) q.list().get(0);
	}

	/**
	 *
	 */
	@Transactional
	public Boolean addEmployee(Employee employee) {
		logger.info("inside addEmployee()");
		this.sessionFactory.getCurrentSession().saveOrUpdate(employee);
		logger.info("addEmployee() executed");
		return returnstmt;

	}

	/**
	 *
	 */
	@Transactional
	public Employee authenticateEmployee(int employeeid, String pass) {
		logger.info("inside authenticateEmployee()");
		Query query = this.sessionFactory.getCurrentSession().createQuery(GETEMPLOYEEDETAILS);
		query.setParameter(EMPID, employeeid);
		query.setParameter("pass", pass);
		List<Employee> results = query.list();

		if (results.isEmpty()) {
			logger.error("authenticateEmployee() failed");
			return null;
		}
		logger.info("authenticateEmployee() executed");
		return results.get(0);
	}

	/**
	 *
	 */
	@Transactional
	public Provide getPoolDetails(int employeeid) {
		logger.info("inside poolDetails()");
		Query query = this.sessionFactory.getCurrentSession().createQuery(GETPOOLDETAILS);
		query.setParameter(EMPID, employeeid);
		List<Provide> results = query.list();

		if (results.isEmpty()) {
			logger.error("no data in poolDetails()");
			return null;
		}
		logger.info("poolDetails() executed");
		return results.get(0);
	}

	/**
	 *
	 */
	@Transactional
	public int saveFind(FindRide find) {
		logger.info("inside saveFind()");
		Query q = this.getSessionFactory().getCurrentSession().createQuery(BOOKINGID);


		int n = 0;
		List<FindRide> find1 = q.list();
		if (find1.isEmpty()) {
			n = 1;
		} else {
			n = find1.get(find1.size() - 1).getBookingId() + 1;

		}
		find.setBookingId(n);
		logger.info("saveFind() executed");
		return (Integer) this.getSessionFactory().getCurrentSession().save(find);
	}

	/**
	 *
	 */
	@Transactional
	public int autoGeneratePoolId() {
		logger.info("inside autoGeneratePoolId()");
		Query query = this.sessionFactory.getCurrentSession().createQuery(GENERATEPOOLID);
		List<Provide> results = query.list();
		if (results.isEmpty()) {
			return 1;
		}
		Provide provide = results.get(results.size() - 1);
		logger.info("autoGeneratePoolId() executed");
		return provide.getPoolId() + 1;
	}

	/**
	 *
	 */
	@Transactional
	public Boolean createPool(Provide provider) {
		logger.info("inside createPool()");
		this.sessionFactory.getCurrentSession().saveOrUpdate(provider);
		logger.info("createPool() executed");
		return returnstmt;

	}

	/**
	 *
	 */
	@Transactional
	public Employee checkEmployee(Employee employee) {
		logger.info("inside checkEmployee()");
		Query query = this.sessionFactory.getCurrentSession().createQuery(CHECKEMPLOYEE);
		query.setParameter(EMPID, employee.getEmployeeId());
		query.setParameter("sq", employee.getSecurityQuestion());
		query.setParameter("sa", employee.getSecurityAnswer());
		List<Employee> results = query.list();
		if (results.isEmpty()) {
			logger.error("checkEmployee() failed");
			return null;
		}
		logger.info("checkEmployee() executed");
		return results.get(0);
	}

	/**
	 *
	 */
	@Transactional
	public Boolean updatePass(int employeeid, String pass) {
		logger.info("inside updatePass()");
		Query query = this.sessionFactory.getCurrentSession().createQuery(UPDATEPASS);
		query.setParameter("pass", pass);
		query.setParameter("empid", employeeid);
		query.executeUpdate();
		logger.info("updatePass() executed");
		return returnstmt;
	}

}
