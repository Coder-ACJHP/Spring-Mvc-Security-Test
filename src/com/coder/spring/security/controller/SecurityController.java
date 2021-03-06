package com.coder.spring.security.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class SecurityController {
	
	@GetMapping(value={"/", "/login"})
	public String loginPage() {
		
		return "login";
	}
	
	@GetMapping("/hello")
	public String welcomePage(Model model) {
		model.addAttribute("title", "Spring Security Hello World");
		model.addAttribute("message", "This is welcome page!");
		return "hello";
	}
	
	@GetMapping("/admin")
	public String adminPage(Model model) {
		model.addAttribute("title", "Spring Security Hello World");
		model.addAttribute("message", "This is protected admin page!");
		return "admin";
	}
	
	//to log out with _crsf & invalidate session
	@PostMapping(value="/j_spring_security_logout")
    public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:login";
    }
	
	//access denied handler
	@GetMapping("/accessDenied")
	public String accessDenied(Principal user, Model model) {
		model.addAttribute("user", user.getName());
		return "/accessDenied";
	}
}





