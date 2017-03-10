package com.johh.dao;

import org.springframework.data.repository.CrudRepository;

import com.johh.model.TestTask;

public interface TestTaskRepository extends CrudRepository<TestTask, Integer>{

}
