package com.johh.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;
import org.springframework.stereotype.Service;

import com.johh.dao.TestTaskRepository;
import com.johh.model.TestTask;

@Service
@Transactional
public class TestTaskService {
	
	private final TestTaskRepository repository;
	
	public TestTaskService(TestTaskRepository repository) {
		// TODO Auto-generated constructor stub
		this.repository = repository;
	}
	
	public List<TestTask> findAll() {
		List<TestTask> testTasks = new ArrayList<>();
		
		for ( TestTask tt : repository.findAll()) {
			testTasks.add(tt);
		}
		
		return testTasks;
	}
	
	public TestTask findTeseTask(int seq) {
		return repository.findOne(seq);
	}
	
	public void save(TestTask task) {
		repository.save(task);
	}
	
	public void delete(int id) {
		repository.delete(id);
	}
	
	
	
}
