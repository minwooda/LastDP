package kr.co.rest.controller;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.rest.beans.UserBean;

@Controller
@RequestMapping("/User")
public class UserController {
	
	@Resource(name="loginUserBean")
	private UserBean loginUserBean;
	
	@GetMapping("/Join")
	public String join(@ModelAttribute("joinUserBean") UserBean joinUserBean) {
		return "User/Join";
	}
	
	@RequestMapping(value = "jusoPopup.do")
	public String Juso() {
		return "User/jusoPopup";
	}
	
	
	

}
