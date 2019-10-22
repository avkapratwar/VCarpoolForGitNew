package com.virtusa.vcarpoool.controller;

import static org.junit.Assert.*;

import javax.validation.constraints.AssertFalse;
import javax.validation.constraints.AssertTrue;

import org.springframework.beans.factory.annotation.Autowired;

import com.virtusa.vcarpoool.dao.VcarpoolDaoImpl;
import com.virtusa.vcarpoool.model.Provide;
import com.virtusa.vcarpoool.service.VcarpoolServiceIface;
import com.virtusa.vcarpoool.service.VcarpoolServiceImpl;

public class Test {

	
	VcarpoolServiceImpl vc=new VcarpoolServiceImpl();
	
	//Provide p =new Provide();
	@org.junit.Test
	public void test() {
		assertEquals(1, vc.updateSeatsService(6, 4, 1));
		//assertEquals(0, vc.updateSeatsService(6, 4, 1));
		//assertEquals(true, vc.sendEmail("abhikapratwar@gmail.com", "ravichandranamrutha@gmail.com", 31	, p, 1, 95119900, 84840901));
		
		
	}

}
