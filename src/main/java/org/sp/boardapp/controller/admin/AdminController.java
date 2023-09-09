package org.sp.boardapp.controller.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.sp.boardapp.domain.Admin;
import org.sp.boardapp.exception.AdminException;
import org.sp.boardapp.model.admin.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;

	//로그인 폼 요청
	@GetMapping("/admin/loginform")
	public ModelAndView loginform() {
		ModelAndView mav=new ModelAndView("admin/loginform");
		
		return mav;
	}
	
	//관리자 메인 요청 처리
	@GetMapping("/admin/main")
	public ModelAndView getMain() {
		ModelAndView mav=new ModelAndView("admin/main");
		
		return mav;
	}
	
	//로그인 요청 처리
	@PostMapping("/admin/login")
	public ModelAndView login(Admin admin, HttpServletRequest request){
		//3단계) 일치하는 계정 정보가 있는지 조회
		Admin dto=adminService.login(admin);
		
		//4단계) 일치하는 정보가 있다면, 세션에 DTO를 담아 서비스
		HttpSession session=request.getSession();
		session.setAttribute("admin", dto);
		
		//ModelAndView mav=new ModelAndView("admin/index"); //포워딩 시
		ModelAndView mav=new ModelAndView("redirect:/admin/main"); //redirect 시
		
		return mav;
	}
	
	@ExceptionHandler(AdminException.class)
	public ModelAndView handle(AdminException e) {
		ModelAndView mav=new ModelAndView("error/result");
		mav.addObject("e", e);
		
		return mav;
	}
}
