package com.boot.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.boot.dto.JobposttbDTO;

public interface JobposttbService {
	public ArrayList<JobposttbDTO> jobselect(HashMap<String, String> param);
	public int getCount(HashMap<String, String> param);
	public ArrayList<JobposttbDTO> mainlist();
	
	public JobposttbDTO jobaply(HashMap<String, String> param);
}
