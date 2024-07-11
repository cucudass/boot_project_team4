package com.boot.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.boot.dto.Criteria;
import com.boot.dto.JobposttbDTO;

@Mapper
public interface JobposttbDAO {
	public ArrayList<JobposttbDTO> jobselect(HashMap<String, String> param); //등록된 공고 출력
	public int getCount(HashMap<String, String> param); //등록된 공고 수
	public ArrayList<JobposttbDTO> mainlist(); //메인화면
	
	//기업 기준
	public void recruitadd(HashMap<String, String> param); //등록
	public JobposttbDTO recruitinfo(HashMap<String, String> param); //등록된 정보 조회
	public ArrayList<JobposttbDTO> recruitlist(HashMap<String, String> param); //등록한 공고 목록 출력
	public void recruitupdate(HashMap<String, String> param); //등록한 공고 수정
	public void recruitdelete(HashMap<String, String> param); //등록한 공고 삭제
	
	//이력서 관련
	public ArrayList<JobposttbDTO> jobaplylist(HashMap<String, String> param);
	public JobposttbDTO jobaply(HashMap<String, String> param);
	public JobposttbDTO resumetbview(HashMap<String, String> param);
}
