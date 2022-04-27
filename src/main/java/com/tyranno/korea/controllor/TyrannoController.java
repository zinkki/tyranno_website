package com.tyranno.korea.controllor;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tyranno.korea.utils.MyAuthentication;

@Controller
public class TyrannoController {

	@RequestMapping(value="/")
	public String main(){
		return "realpage";
	}
	

	@RequestMapping("/ex")
	public String realP() {
		return "index";
	}
	
	@RequestMapping(value="/hihi")
	public String hihi() {
		return "hihi";
	}
	
	@RequestMapping("/barkbark")
	public String barkbark() {
		return "barkbark/barkbark";
	}
	//Contact Page
	@RequestMapping("/go_contact")
	public String contact(Model model) {
		return "contact";  
	}
	//Portfolio Page
	@RequestMapping("/go_portfolio")
	public String portfolio(Model model) {
		return "submitBtn"; 
	}
	//WhatWeDo Page
	@RequestMapping("/go_what_we_do")
	public String what(Model model) {
		return "whatwedo";
	}
	//Contact Page Form에서 받아온 내용받기
	@ResponseBody
	@RequestMapping("/sendMsg")
	public String getMsg() {
		return "contact";
	}
	
	@RequestMapping("test")
	public String test() {
		return "undermap";
	}
	
	@RequestMapping("moving")
	public String really() {
		return "movingtest";
	}
	
	@RequestMapping("buzzT")
	public String buzzTest() {
		return "buzz";
	}
	
	@RequestMapping("ticket")
	public String ticketT() {
		return "ticketTest";
	}
	
	@RequestMapping("screen")
	public String Screen() {
		return "scroll_spy";
	}
	@RequestMapping("btn")
	public String submit() {
		return "portfoliopage";
	}
	
	@RequestMapping("foo")
	public String footerTest() {
		return "footer2";
	}
	
	@RequestMapping("tab")
	public String tabmenu() {
		return "submitBtn2";
	}
}
