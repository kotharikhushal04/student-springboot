package com.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.demo.model.logvo;
import com.demo.service.servicecon;



@Controller
public class mycontroller {
	@Autowired
	servicecon servicecon; 
	 
	@RequestMapping(value="/")
	public ModelAndView Load(){
		List searchList = this.servicecon.search();

		return new ModelAndView("home", "searchList", searchList);
	}
	
	
	@RequestMapping(value="addnow")
	public ModelAndView Load1(){
		return new ModelAndView("add","logvo",new logvo());
	}
	
	@RequestMapping(value="insert", method = RequestMethod.POST)
	public ModelAndView Load2(@ModelAttribute logvo logvo){
		this.servicecon.insert(logvo);
		List searchList = this.servicecon.search();

		return new ModelAndView("home", "searchList", searchList);
	}
		
	
	
	@RequestMapping(value="search",method=RequestMethod.GET)
	public ModelAndView search() {

		List searchList = this.servicecon.search();

		return new ModelAndView("home", "searchList", searchList);
	}
	@RequestMapping(value = "delete", method = RequestMethod.GET)
	public ModelAndView Delete(@ModelAttribute logvo logvo, @RequestParam int id) {

		logvo.setId(id);
		this.servicecon.delete(logvo);

		List searchList = this.servicecon.search();

		return new ModelAndView("home", "searchList", searchList);
	}

	@RequestMapping(value = "edit", method = RequestMethod.GET)
	public ModelAndView Edit(@ModelAttribute logvo logvo, @RequestParam int id) {

		logvo.setId(id);
		List editList = this.servicecon.edit(logvo);
		return new ModelAndView("add", "logvo", editList.get(0));
	}
	
}