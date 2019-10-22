package com.virtusa.vcarpoool.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.virtusa.vcarpoool.model.Employee;
import com.virtusa.vcarpoool.model.FindRide;
import com.virtusa.vcarpoool.model.Provide;
import com.virtusa.vcarpoool.service.VcarpoolServiceIface;

/**
 * @author amruthar
 *
 */
@Controller
public class VcarpoolControl {
	private static final String CREATEPOOL = "CreatePool";
	private static final String INDEXAFTER = "indexAfter";
	private static final String LOGIN = "Login";
	private static final String EMPDETAILS = "EmpDetails";
	private static final String POOLDETAILS = "poolDetails";
	private static final String PROVIDERHOMEPAGE = "ProviderHomePage";
	private static final String CHANGEPW = "ChangePWD";
	private static final String PROFILE = "profile";
	private static final String UPDATEPROFILE = "UpdateProfile";
	private static final String CHANGEPASS = "ChangePass";
	private static final String FORGETCREDENTIALS = "ForgetCredentials";
	private static final String UPDATEPOOL = "UpdatePool";
	private static final String DISPLAY = "display";
	private static final String REGISTRATIONPAGE = "RegistrationPage";
	private static final String HOMEPAGE = "HomePage";
	private static final String RIDELIST = "RideList";
	private static final String SUCCESS = "Success";
	private static final String POOLID = "poolid";
	private static final String NEWPROVIDER = "newprovider";
	private static final String EMPLOYEEE = "Employee";
	private static final String UTYPE1 = "Utype";
	String PROVIDER = "provider";
	String RIDER = "rider";
	private int loggedinUserEmpId = 0;
	private int flag = 0;
	private String utype;
	@Autowired
	private VcarpoolServiceIface userServiceImpl;

	Employee employee = new Employee();
	Provide provide = new Provide();

	/**
	 * @param source
	 * @param destination
	 * @param numberof
	 * @return
	 */
	@RequestMapping(value = "/FindRideHomeBefLogin1.vcp")
	public ModelAndView disp1(@ModelAttribute("source") String source,
			@ModelAttribute("destination") String destination, @ModelAttribute("noOfSeats") int numberof) {
		List<Provide> listOfRides = userServiceImpl.numberOfRidesService(source, destination, numberof);
		ModelAndView m = new ModelAndView();
		m.addObject("noOfSeats", numberof);
		m.setViewName(SUCCESS);
		return new ModelAndView(SUCCESS, "lists", listOfRides);
	}

	/**
	 * @param source
	 * @param destination
	 * @param numberof
	 * @return
	 */
	@RequestMapping(value = "/FindRideAfterLogin.vcp")
	public ModelAndView disp(@ModelAttribute("source") String source, @ModelAttribute("destination") String destination,
			@ModelAttribute("noOfSeats") int numberof) {
		List<Provide> listOfRides = userServiceImpl.numberOfRidesService(source, destination, numberof);
		ModelAndView m = new ModelAndView();
		m.addObject("noOfSeats", numberof);
		m.setViewName(RIDELIST);
		return new ModelAndView(RIDELIST, "lists", listOfRides);
	}

	/**
	 * @return
	 */
	@RequestMapping("/indexAfter")
	public String disp(Model mv) {
		mv.addAttribute(EMPDETAILS, employee);
		return INDEXAFTER;
	}

	/**
	 * @param poolid
	 * @param noseats
	 * @param num
	 * @param source
	 * @param dest
	 * @param empid
	 * @return
	 */
	@RequestMapping(value = "/bookRide.vcp")
	public ModelAndView dis(@RequestParam("poolId") int poolid, @RequestParam("noOfSeats") int noseats,
			@RequestParam("num") int num, @RequestParam("source") String source,
			@RequestParam("destination") String dest, @RequestParam("empid") int empid,
			@RequestParam("start") String startTime, @RequestParam("return") String returnTime) {
		ModelAndView m = new ModelAndView();
		if (flag != 0) {
			int n = userServiceImpl.updateSeatsService(poolid, noseats, num);
			Provide provide1 = new Provide();
			provide1.setDestination(dest);
			provide1.setEmployeeId(empid);
			provide1.setSource(source);
			provide1.setPoolId(poolid);
			provide1.setStartTime(startTime);
			provide1.setReturnTime(returnTime);
			if (n > 0) {
				m.addObject(POOLID, poolid);
				m.addObject("noseats", noseats);
				m.addObject("source", source);
				m.addObject("dest", dest);
				m.setViewName("BookIt");
				Employee user = userServiceImpl.emailIdDetails(empid);
				Employee rider = userServiceImpl.emailIdDetails(loggedinUserEmpId);
				FindRide find1 = new FindRide();
				find1.setRdestination(dest);
				find1.setRnoOfSeats(num);
				find1.setRsource(source);
				find1.setUserType("Rider");
				find1.setRstatus("active");
				find1.setEmployeeId(loggedinUserEmpId);
				find1.setRstartTime(startTime);
				find1.setRreturnTime(returnTime);
				int n1 = userServiceImpl.saveFind(find1);
				find1.setBookingId(n1);
				//System.out.println("Before mail");
				@SuppressWarnings("unused")
				Boolean b = userServiceImpl.sendEmail(rider.getEmployeeEmailId(), user.getEmployeeEmailId(), n1,
						provide, num, user.getEmployeeMobileNo(), rider.getEmployeeMobileNo());
				//System.out.println(b);
				//System.out.println("After mail");
			}
		} else {
			m.addObject(EMPDETAILS, employee);
			m.setViewName(INDEXAFTER);
			return m;
		}
		flag = 0;
		return m;

	}

	/**
	 * @param m
	 * @return
	 */
	@RequestMapping("/registertake")
	public String takeToAdd(Model m) {
		m.addAttribute("reg", new Employee());
		return REGISTRATIONPAGE;
	}

	/**
	 * @return
	 */
	@RequestMapping("/login")
	public String login() {
		return LOGIN;
	}

	/**
	 * @return
	 */
	@RequestMapping("/Logout.vcp")
	public String logout() {
		loggedinUserEmpId = 0;
		return HOMEPAGE;
	}

	/**
	 * @param employee
	 * @param results
	 * @return
	 */
	@RequestMapping("/RegistrationController")
	public String registerEmployee(@Valid @ModelAttribute("reg") Employee employee, BindingResult results) {
		if (results.hasErrors()) {
			return REGISTRATIONPAGE;
		} else if (userServiceImpl.addEmployee(employee)) {
			return LOGIN;
		} else {
			return LOGIN;
		}

	}

	/**
	 * @param empid
	 * @param mv
	 * @return
	 */
	@RequestMapping("/check")
	public String check(@RequestParam("empid") int empid, Model mv) {
		Provide provider = userServiceImpl.getPoolDetails(empid);
		mv.addAttribute("data", provider);

		if (provider != null) {
			return DISPLAY;
		}
		return LOGIN;
	}

	/**
	 * @param employeeid
	 * @param pass
	 * @param utype
	 * @param mv
	 * @return
	 */
	@RequestMapping("/AuthenticationUserController")
	public String authenticateEmployee(@RequestParam("txtEmpid") int employeeid, @RequestParam("txtPwd") String pass,
			@RequestParam("utype") String utype, Model mv) {
			Employee emp = userServiceImpl.authenticateEmployee(employeeid, pass);

			this.employee = emp;
			this.utype = utype;
			flag = 1;
			try {
				loggedinUserEmpId = emp.getEmployeeId();
			} catch (NullPointerException e) {
				e.printStackTrace();
			}
			mv.addAttribute(EMPDETAILS, emp);
			if (emp != null) {

				if (utype.equals(PROVIDER)) {

					Provide provider = userServiceImpl.getPoolDetails(employeeid);
					if (provider != null) {
						mv.addAttribute(POOLDETAILS, provider);
						this.provide = provider;
						
						return PROVIDERHOMEPAGE;
					} else {
						mv.addAttribute(POOLID, userServiceImpl.generatePoolId());
						mv.addAttribute(NEWPROVIDER, new Provide());
						return CREATEPOOL;
					}
				}
				if (utype.equals(RIDER)) {
					return INDEXAFTER;
				}
				
			}
			
		
		return LOGIN;

	}

	/**
	 * @param mv
	 * @return
	 */
	@RequestMapping("/Createpool")
	public String taketocreate(Model mv) {
		mv.addAttribute(POOLID, userServiceImpl.generatePoolId());
		mv.addAttribute(NEWPROVIDER, new Provide());
		mv.addAttribute(EMPDETAILS, employee);
		return CREATEPOOL;
	}

	/**
	 * @param provider
	 * @param results
	 * @param mv
	 * @return
	 */
	@RequestMapping("/CreatePoolController")
	public String createPool(@Valid @ModelAttribute("newprovider") Provide provider, BindingResult results, Model mv) {
		if (userServiceImpl.createPool(provider)) {
			mv.addAttribute(EMPDETAILS, employee);
			Provide provider2 = userServiceImpl.getPoolDetails(provider.getEmployeeId());
			if (provider2 != null) {
				this.provide = provider2;
				mv.addAttribute(POOLDETAILS, provider2);
				return PROVIDERHOMEPAGE;
			}
			mv.addAttribute(POOLID, userServiceImpl.generatePoolId());
			return CREATEPOOL;
		} else {
			mv.addAttribute(POOLID, userServiceImpl.generatePoolId());
			return CREATEPOOL;
		}
	}

	/**
	 * @param mv
	 * @return
	 */
	@RequestMapping("/taketoupdate")
	public String takeToUpdate(Model mv) {
		mv.addAttribute(POOLDETAILS, provide);
		mv.addAttribute(EMPDETAILS, employee);
		mv.addAttribute(NEWPROVIDER, new Provide());
		return UPDATEPOOL;

	}

	/**
	 * @param mv
	 * @return
	 */
	@RequestMapping("/forgotpasstake")
	public String takeToForgotPass(Model mv) {
		mv.addAttribute(EMPDETAILS, employee);
		return FORGETCREDENTIALS;
	}

	/**
	 * @param employee
	 * @param mv
	 * @return
	 */
	@RequestMapping("/ForgotCredentialsController")
	public String forgotCredentials(@ModelAttribute("EmpDetails") Employee employee, Model mv) {
		employee = userServiceImpl.checkEmployee(employee);
		if (employee != null) {
			mv.addAttribute(EMPDETAILS, employee);
			return CHANGEPASS;
		}
		return null;
	}

	/**
	 * @param employeeid
	 * @param pass
	 * @param mv
	 * @return
	 */
	@RequestMapping("/UpdatePassController")
	public String updatePass(@RequestParam("Employeeid") int employeeid, @RequestParam("newpwd") String pass,
			Model mv) {
		if (userServiceImpl.updatePass(employeeid, pass)) {
			return LOGIN;
		}
		mv.addAttribute(EMPDETAILS, employee);
		return CHANGEPASS;
	}

	/**
	 * @param mv
	 * @return
	 */
	@RequestMapping("/TakeToProfileDisp")
	public String taketoprofile(Model mv) {
		mv.addAttribute(EMPLOYEEE, employee);
		mv.addAttribute(UTYPE1, utype);
		return PROFILE;
	}

	/**
	 * @param mv
	 * @return
	 */
	@RequestMapping("/UpdateProfController")
	public String updateProf(Model mv) {

		mv.addAttribute(EMPLOYEEE, employee);
		mv.addAttribute(UTYPE1, utype);
		return UPDATEPROFILE;

	}

	/**
	 * @param employee
	 * @param res
	 * @param mv
	 * @return
	 */
	@RequestMapping("/ProfUpdate")
	public String profUpd(@Valid @ModelAttribute("Employee") Employee employee, BindingResult res, Model mv) {

		if (res.hasErrors()) {
			return UPDATEPROFILE;
		} else {
			if (userServiceImpl.addEmployee(employee)) {
				Employee empl = userServiceImpl.authenticateEmployee(employee.getEmployeeId(), employee.getPasskey());
				this.employee=empl;
				mv.addAttribute(EMPLOYEEE, employee);
				mv.addAttribute(UTYPE1, utype);
				return PROFILE;
			} else {
				mv.addAttribute(EMPLOYEEE, employee);
				mv.addAttribute(UTYPE1, utype);
				return PROFILE;

			}

		}

	}

	/**
	 * @param mv
	 * @return
	 */
	@RequestMapping("/TakeToChangePass")
	public String takeToChangePass(Model mv) {
		mv.addAttribute(EMPLOYEEE, employee);
		mv.addAttribute(UTYPE1, utype);
		return CHANGEPW;
	}

	/**
	 * @param pass
	 * @param empid
	 * @param mv
	 * @return
	 */
	@RequestMapping("/ChangePass")
	public String changePass(@RequestParam("newpwd") String pass, @RequestParam("empid") int empid, Model mv) {
		if (userServiceImpl.updatePass(empid, pass)) {
			employee = userServiceImpl.authenticateEmployee(empid, pass);
			mv.addAttribute(EMPLOYEEE, employee);
			mv.addAttribute(UTYPE1, utype);
			return PROFILE;
		}
		mv.addAttribute(EMPLOYEEE, employee);
		mv.addAttribute(UTYPE1, utype);
		return CHANGEPW;
	}

	/**
	 * @param mv
	 * @return
	 */
	@RequestMapping("/takeToProvideHome")
	public String providerHome(Model mv) {
		mv.addAttribute(EMPDETAILS, employee);
		mv.addAttribute(POOLDETAILS, provide);
		return PROVIDERHOMEPAGE;
	}

	/**
	 * @param mv
	 * @return
	 */
	@RequestMapping("/takeToRiderHome")
	public String riderHome(Model mv) {
		mv.addAttribute(EMPDETAILS, employee);
		return INDEXAFTER;
	}
}
