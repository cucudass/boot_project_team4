package com.boot.service;

import java.util.HashMap;

import org.springframework.web.multipart.MultipartFile;

import com.boot.dto.ImgtbDTO;

public interface ImgtbService {
	public void imgupload(ImgtbDTO imgtbdto);
	public ImgtbDTO getFileselect(HashMap<String, String> param);
	
	public void imgupload_resume(ImgtbDTO imgtbdto, MultipartFile uploadFile, String basepath);
	public void imgdelete_resume(ImgtbDTO imgtbdto);
}
