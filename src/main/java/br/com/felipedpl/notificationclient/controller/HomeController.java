package br.com.felipedpl.notificationclient.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@GetMapping("/index")
	public ModelAndView index(Model model) {
		return new ModelAndView("index");
	}
}
