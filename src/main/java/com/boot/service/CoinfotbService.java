package com.boot.service;

import java.util.HashMap;

import com.boot.dto.CoinfotbDTO;

public interface CoinfotbService {
	public void insert(HashMap<String, String> param);
	public CoinfotbDTO Coinfotblist(HashMap<String, String> param);
	public void Coinmodify(HashMap<String, String> param);
}
