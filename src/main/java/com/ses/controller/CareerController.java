package com.ses.controller;

import java.util.List;

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
	private Career career;
	
	@Autowired
	private CareerService careerService;
	
	
	/* =========================================================== */
	/*			       SELECTING ALL CAREER    					   */
	/* =========================================================== */
	
	@RequestMapping(value="/allCareers", method = RequestMethod.GET)
	public String selectCareer(Model model){
		
		String goodMessage = "";
		String badMessage = "";
		List<Career> careers = null;

		try {
			careers = careerService.listAllCareers();
			if (careers.size() == 0) {
				goodMessage = "There is no any Careers yet. Add someone!";
			}
			
		} catch (Exception e) {
			badMessage = "A problem has ocurred!";
		}
		
		model.addAttribute("goodMessage", goodMessage);
		model.addAttribute("badMessage", badMessage);
		model.addAttribute("careers", careers);
		
		return "all-careers";
	}
	
	/* =========================================================== */
	/*			              CAREER FORM   					   */
	/* =========================================================== */
	
	@RequestMapping(value="/saveCareerForm", method = RequestMethod.GET)
	public String saveCareerForm(){
		return "save-career";
	}
	
	
	/* =========================================================== */
	/*			           SAVING A CAREER    					   */
	/* =========================================================== */
	
	@RequestMapping(value="/saveCareer", method = RequestMethod.POST)
	public String saveCareer(
				@RequestParam(value="name") String name,
				Model model
			){
		
		String goodMessage = "";
		String badMessage = "";
		
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
