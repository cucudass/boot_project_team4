package com.boot.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class CoinfotbDTO {
	private String cuserid;		//기업아이디
	private int csrno;			//기업정보번호
	private String cusnm;		//기업 이름
	private String bossnm;		//대표자명
	private String loc01;		//위치
	private String loc02;		//상세주소
	private int indue;			//업력
	private int deptno;			//업종
	private int emnum;			//사원수
	private String binfo;		//사업내용
	private Timestamp adate;	//등록 일자
}