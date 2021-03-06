package com.example.demo;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 * Handles requests for the application home page.
 */
@Controller
@SessionAttributes({"demo","mem","cmm"})
public class HomeController {
	@Autowired HttpSession session;
	@Autowired HttpServletRequest request;
	
	@GetMapping("/")
	public String home(HttpSession session, HttpServletRequest request) {
		logger.info("demo");
		String demo = request.getContextPath();
		session.setAttribute("demo", demo);
		session.setAttribute("mem", demo+"/resources/mem");
		session.setAttribute("cmm", demo+"/resources/cmm");
		return "home";
	}
		
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@GetMapping("/mem/{page}")
	public String member(@PathVariable String page) {
        logger.info("이동 파일: " + page);
        return String.format("mem:%s", page);
	}
	
	@GetMapping("/cmm/{page}")
	public String common(@PathVariable String page) {
        logger.info("이동 파일: " + page);
        return String.format("cmm:%s", page);
	}
}
