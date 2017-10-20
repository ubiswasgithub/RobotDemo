package robotdemo.ub.robot;



import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import org.robotframework.javalib.annotation.RobotKeyword;
import org.robotframework.javalib.annotation.RobotKeywords;

import com.gargoylesoftware.htmlunit.ScriptException;
import com.github.markusbernhardt.selenium2library.Selenium2Library;



@RobotKeywords
public class SearchKeyWords {
	
	public static final String ROBOT_LIBRARY_SCOPE = "GLOBAL";
	protected WebDriver driver = null;
	protected Selenium2Library s = new Selenium2Library();
	
	@RobotKeyword
	public String hello(String helloMessage){
		return "Hello, "+helloMessage;
	}
	
	@RobotKeyword
	public void header(String headerName) throws ScriptException, javax.script.ScriptException {
		driver = s.getLibraryInstance().getBrowserManagement().getCurrentWebDriver();
		String txt = driver.findElement(By.id("main-headers")).getText().toString();
		System.out.println(txt);
		if (headerName.equalsIgnoreCase(txt))
			System.out.println("Passed");

	}

}
