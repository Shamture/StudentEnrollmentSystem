package com.ses.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ses.domain.Career;
import com.ses.service.CareerService;

@Controller
public class CareerController {

	@Autowired
	private CareerService careerService;
	
	@RequestMapping(value="/saveCareer", method = RequestMethod.POST)
	public ModelAndView saveCareer(
				@RequestParam(value="name") String name
			){
		
		Career career = new Career();
		career.setName(name);
		
		careerService.saveCareer(career);
		
		//ModelAndView(viewName, modelName, modelObject);
		return new ModelAndView("save-career", "message", "Career is saved");
	}
}
