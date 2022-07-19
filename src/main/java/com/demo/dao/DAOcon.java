package com.demo.dao;

import java.util.List;

import com.demo.model.logvo;

public interface DAOcon {
	public void insert(logvo logvo);
	public List search();
	public void delete(logvo logvo);
	public List edit(logvo logvo);
}
