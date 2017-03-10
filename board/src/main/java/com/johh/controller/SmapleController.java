package com.johh.controller;

import java.util.Date;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.johh.model.TestTask;
import com.johh.service.TestTaskService;

@RestController
public class SmapleController {

	@Autowired
	private TestTaskService testTaskService;
	
//	@RequestMapping("/all-testtasks")
//	public String allTestTasks() {
//		return testTaskService.findAll().toString().toString();
//	}
//	
//	@RequestMapping("/save-task")
//	public String saveTestTask(@RequestParam HashMap params) {
//		TestTask tt = new TestTask(params.get("id").toString(), params.get("pwd").toString(), params.get("name").toString(), new Date(), params.get("tel").toString());
//		testTaskService.save(tt);
//		return "data save";
//	}
//	
//	@RequestMapping("/delete-task")
//	public String deleteTesetTask(@RequestParam int seq) {
//		testTaskService.delete(seq);
//		return "delete";
//	}
}
