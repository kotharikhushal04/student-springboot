package com.demo.service;


import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.*;

import com.demo.model.logvo;

@Service
public class serviceconimp implements servicecon {
	@Autowired DAOcon DAOcon;
	
	@Transactional
	public void insert(logvo logvo)
	{
		this.DAOcon.insert(logvo);
	}
	@Override
	public List search() {
		// TODO Auto-generated method stub
		return (List) this.DAOcon.search();	
	}
	
	@Transactional
	public void delete(logvo logvo)
	{
		this.DAOcon.delete(logvo);
	}
	
	@Transactional
	public List edit(logvo logvo)
	{
		return this.DAOcon.edit(logvo);
	
	}
}
