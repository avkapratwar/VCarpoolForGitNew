package com.virtusa.vcarpoool.seleniumtesting;


import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.Select;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

public class SeleniumTesting {
	public static void main(String[] args) {
		System.setProperty("webdriver.chrome.driver", "C:\\Users\\amruthar\\Desktop\\lib\\chromedriver.exe");
		WebDriver webDriver = new ChromeDriver();
		webDriver.get("http://localhost:8181/VcarPoolV1/index.jsp");
		searchBefLogin(webDriver);
		
		
	}
	public static void searchBefLogin(WebDriver driver) {
		driver.findElement(By.name("source")).sendKeys("Virtusa Hyderabad Campus, Financial District, Nanakramguda, Hyderabad, Telangana, India");
		driver.findElement(By.name("destination")).sendKeys("Pune, Maharashtra, India");
		WebElement element = driver.findElement(By.id("input3"));
		new Select(element).selectByVisibleText("12 AM - 1 AM");
		WebElement element2 = driver.findElement(By.id("input4"));
		new Select(element2).selectByVisibleText("12 AM - 1 AM");
		WebElement element3 = driver.findElement(By.id("txtNoOfSeats"));
		new Select(element3).selectByVisibleText("1");
		driver.findElement(By.xpath("//*[@class=\"btn btn-primary\"]")).click();
		driver.get("http://localhost:8181/VcarPoolV1/Login.jsp");
		loginProvider(driver);
		
		
	}
	
	public static void loginProvider(WebDriver driver) {
		driver.findElement(By.name("txtEmpid")).sendKeys("8063669");
		driver.findElement(By.name("txtPwd")).sendKeys("Admin#123");
		WebElement element = driver.findElement(By.id("input"));
		new Select(element).selectByValue("provider");
		driver.findElement(By.xpath("//*[@id=\"submitButton\"]")).click();
		//driver.get("http://localhost:8181/VcarPoolV1/AuthenticationUserController.vcp");
		//updatePool(driver);
//		driver.get("http://localhost:8181/VcarPoolV1/Login.jsp");
//		loginRider(driver);
		
	}
	
	public static void createPoolProvider(WebDriver driver) {
		
	}
	
	
	public static void updatePool(WebDriver driver) {
		driver.findElement(By.xpath("//*[@id=\"updatePoolId\"]")).click();
		
	}
	
	public static void loginRider(WebDriver driver) {
		driver.findElement(By.name("txtEmpid")).sendKeys("8063669");
		driver.findElement(By.name("txtPwd")).sendKeys("Admin#123");
		WebElement element = driver.findElement(By.id("input"));
		new Select(element).selectByValue("rider");
		driver.findElement(By.xpath("//*[@id=\"submitButton\"]")).click();
		//driver.get("http://localhost:8181/VcarPoolV1/AuthenticationUserController.vcp");
		//searchAfterLogin(driver,8063669);
		
	}
	
	@RequestMapping(value = "/AuthenticationUserController", method = RequestMethod.POST)
	//@RequestParam(value = "txtEmpid", required = true)
	public static void searchAfterLogin(WebDriver driver,@RequestParam(name = "txtEmpid", required = false) int id) {
		driver.findElement(By.name("source")).sendKeys("Virtusa Hyderabad Campus, Financial District, Nanakramguda, Hyderabad, Telangana, India");
		driver.findElement(By.name("destination")).sendKeys("Pune, Maharashtra, India");
		WebElement element = driver.findElement(By.id("input3"));
		new Select(element).selectByVisibleText("12 AM - 1 AM");
		WebElement element2 = driver.findElement(By.id("input4"));
		new Select(element2).selectByVisibleText("12 AM - 1 AM");
		WebElement element3 = driver.findElement(By.id("txtNoOfSeats"));
		new Select(element3).selectByVisibleText("1");
		driver.findElement(By.xpath("//*[@class=\"btn btn-primary\"]")).click();
	}
}
