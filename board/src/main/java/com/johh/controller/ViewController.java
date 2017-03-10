package com.johh.controller;

import java.util.Date;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.johh.model.TestTask;
import com.johh.service.TestTaskService;

import lombok.experimental.PackagePrivate;

@Controller
public class ViewController {
	
	@Autowired
	TestTaskService service;
	
	@GetMapping("/")
	public String index(){
		return "index";
	}
	
	@GetMapping("/alltasks")
	public String allTest(ModelMap map) {
		map.addAttribute("testTasks", service.findAll());
		map.addAttribute("mode", "MODE_TASKS");
		return "tasksList";
	}
	
	@GetMapping("/newtask")
	public String newTask(ModelMap map) {
		map.addAttribute("mode", "MODE_NEW");
		return "tasksList";
	}
	
	@PostMapping("/savetask")
	public String saveTask(@ModelAttribute TestTask tt, BindingResult result, ModelMap map) {
		tt.setRegdate(new Date());
		service.save(tt);
		map.addAttribute("testTasks", service.findAll());
		map.addAttribute("mode", "MODE_TASKS");
		return "tasksList";
	}
	
	@GetMapping("/updatetask")
	public String updateTask(@ModelAttribute TestTask tt, BindingResult result, ModelMap map, @RequestParam int seq) {
		map.addAttribute("testTasks", service.findTeseTask(seq));
		map.addAttribute("mode", "MODE_UPDATE");
		return "tasksList";
	}
	
	@GetMapping("/deletetask")
	public String deleteTask(@ModelAttribute TestTask tt, BindingResult result, ModelMap map, @RequestParam int seq) {
		service.delete(seq);
		map.addAttribute("testTasks", service.findAll());
		map.addAttribute("mode", "MODE_TASKS");
		return "tasksList";
	}
	
}
