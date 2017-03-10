package com.johh.model;

import java.security.Timestamp;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@Entity(name="user")
@Data
public class TestTask {
	
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private int seq;
	
	private String id;
	@JsonIgnore
	private String password;
	private String name;
	
	@Temporal (TemporalType.DATE)
	private Date regdate;
	
	private String tel;
	
	public TestTask() {}
	
	public TestTask(String id, String password, String name,  Date regdate, String tel) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.regdate = regdate;
		this.tel = tel;
	}
}
