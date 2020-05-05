package com.book.web;

import com.book.domain.Admin;
import com.book.domain.ReaderCard;
//import com.book.domain.ReaderInfo;
import com.book.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;

@Controller
public class LoginController {

	private LoginService loginService;

	@Autowired
	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}

	@RequestMapping(value = { "/", "/login.html" })
	public String toLogin(HttpServletRequest request) {
		request.getSession().invalidate();
		return "index";
	}

	@RequestMapping("/logout.html")
	public String logout(HttpServletRequest request) {
		request.getSession().invalidate();
		return "redirect:/login.html";
	}

	@RequestMapping(value = "/api/loginCheck", method = RequestMethod.POST)
	public @ResponseBody Object loginCheck(HttpServletRequest request) {
		
		int id = Integer.parseInt(request.getParameter("id"));
		String passwd = request.getParameter("passwd");
		
		boolean isReader = loginService.hasMatchReader(id, passwd);
		boolean isAdmin = loginService.hasMatchAdmin(id, passwd);
		
		HashMap<String, String> res = new HashMap<String, String>();
		
		if (isAdmin == false && isReader == false) {
			res.put("stateCode", "0");
			res.put("msg", "Input id or password not correct!");
		} 
		else if (isAdmin) {
			Admin admin = new Admin();
			admin.setAdminId(id);
			admin.setPassword(passwd);
			request.getSession().setAttribute("admin", admin);
			res.put("stateCode", "1");
			res.put("msg", "Logged in as admin successfuly!");
		} 
		else {
			ReaderCard readerCard = loginService.findReaderCardByUserId(id);
			request.getSession().setAttribute("readercard", readerCard);
			res.put("stateCode", "2");
			res.put("msg", "Logged in as reader successfuly!");
			//return "redirect:/reader_main.html";
		}
		return res;
	};

	@RequestMapping("/admin_main.html")
	public ModelAndView toAdminMain(HttpServletResponse response) {

		return new ModelAndView("admin_main");
	}

	@RequestMapping("/reader_main.html")
	public ModelAndView toReaderMain(HttpServletResponse response) {

		return new ModelAndView("reader_main");
	}

	@RequestMapping("/admin_repasswd.html")
	public ModelAndView reAdminPasswd() {

		return new ModelAndView("admin_repasswd");
	}

	@RequestMapping("/admin_repasswd_do")
	public String reAdminPasswdDo(HttpServletRequest request, String oldPasswd, String newPasswd, String reNewPasswd,
			RedirectAttributes redirectAttributes) {

		Admin admin = (Admin) request.getSession().getAttribute("admin");
		int id = admin.getAdminId();
		String passwd = loginService.getAdminPasswd(id);

		if (passwd.equals(oldPasswd)) {
			boolean succ = loginService.adminRePasswd(id, newPasswd);
			if (succ) {

				redirectAttributes.addFlashAttribute("succ", "Password changed successfuly!");
				return "redirect:/login.html";
			} 
			else {
				redirectAttributes.addFlashAttribute("error", "Error occurred while resetting new password... Try again");
				return "redirect:/admin_repasswd.html";
			}
		} 
		else {
			redirectAttributes.addFlashAttribute("error", "Old password is incorrect.");
			return "redirect:/admin_repasswd.html";
		}
	};

	@RequestMapping("*")
	public String notFind() {
		return "404";
	}

}