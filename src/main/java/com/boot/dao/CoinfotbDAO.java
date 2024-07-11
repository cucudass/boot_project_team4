package com.boot.dao;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.boot.dto.CoinfotbDTO;

//실행시 매퍼파일을 읽어 들이도록 지정
@Mapper
public interface CoinfotbDAO {
	public void insert(HashMap<String, String> param);
	public CoinfotbDTO Coinfotblist(HashMap<String, String> param);
	public void Coinmodify(HashMap<String, String> param);
}