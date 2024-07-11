package com.boot.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.boot.dto.CoinfotbDTO;
import com.boot.service.CoinfotbService;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
public class CoinfotbController {

    @Autowired
    private CoinfotbService service;
    
    SessionController sessioncon = new SessionController();
    
    @RequestMapping("/coinfo")
    public String coinfo(@RequestParam HashMap<String, String> param, Model model, HttpSession session) {
        log.info("@# coinfo");

        String cuserid = (String) session.getAttribute("id");
        param.put("cuserid", cuserid);
        
        CoinfotbDTO dto = service.Coinfotblist(param);
        if (dto != null) {
            model.addAttribute("coinfotb", dto);
        } else {
            model.addAttribute("coinfotb", new CoinfotbDTO());  // 빈 DTO를 생성하여 폼에 전달
        }
        
        return "coinfo/coinfo";
    }

    @RequestMapping("/insert")
    public String insert(@RequestParam HashMap<String, String> param, RedirectAttributes redirectAttributes) {
        log.info("@# insert");
        service.insert(param);
        
        redirectAttributes.addFlashAttribute("message", "기업정보등록이 완료되었습니다.");
        return "redirect:/coinfo";
    }

    @RequestMapping("/Coinmodify")
    public String Coinmodify(@RequestParam HashMap<String, String> param, RedirectAttributes redirectAttributes) {
    	log.info("@# Coinmodify");
    	
    	service.Coinmodify(param);
    	log.info("@# Coinmodify param => "+param);
    	
    	redirectAttributes.addFlashAttribute("message", "기업정보수정이 완료되었습니다.");
    	return "redirect:/coinfo";
    }
}