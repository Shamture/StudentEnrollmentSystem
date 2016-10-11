package com.ses.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ses.domain.Career;
import com.ses.service.CareerService;

@Controller
public class CareerController {
	
	@Autowired
	private CareerService careerService;
	
	@RequestMapping(value="/saveCareer", method = RequestMethod.POST)
	public String saveCareer(
				@RequestParam(value="name") String name,
				Model model
			){
		
		String goodMessage = "";
		String badMessage = "";
		
		Career career = new Career();
		career.setName(name);
		
		try {
			careerService.saveCareer(career);
			goodMessage = "Career is saved";
		} catch (Exception e) {
			badMessage = "A problem has ocurred!";
		}
		
		model.addAttribute("goodMessage", goodMessage);
		model.addAttribute("badMessage", badMessage);
		
		return "save-career";
	}
}
