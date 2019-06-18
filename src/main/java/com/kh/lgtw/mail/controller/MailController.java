package com.kh.lgtw.mail.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.lgtw.mail.model.vo.Mail;

@Controller
public class MailController {
	
	// 전체 메일함 조회
	@RequestMapping("mail/allList.ma") // HomeController를 여기로 리다이렉트 시키기 
	public String selectMailList(int currentPage, Model model) {
		return null;
	}
	
	// 하나로 합친다면 
	@RequestMapping("mail/mailList.ma")
	public String mailList(HttpServletRequest request) {
		
		String pageType = request.getParameter("pageType");
		
		// 비즈니스 로직 
		
		switch(pageType) {
			case "all" : return ""; 
			case "send" : return ""; 
			case "recieve" : return ""; 
			case "outBox" : return ""; 
			case "trash" : return ""; 
		}
		return null;
	}
	
	// 메일 - 읽음처리
	@RequestMapping("updateRead.ma")
	public String updateReadMail(HttpServletRequest request) { 
		// 읽음처리할 메일의 id 값들을 배열로 받아서 처리한다. 
		// 페이징 처리도 잊지 말기 
		// request 페이지 이름값 받기 
		return "";
	}
	
	// 메일 - 삭제처리
	@RequestMapping("updateDelete.ma")
	public String updateDeleteMail(HttpServletRequest request) {
		// 페이징 처리도 잊지 말기 
		// 업데이트후 리스트 조회
		return "";
	}
	
	
	// 메일 작성
//	@RequestMapping("mailSearchList.ma")
//	public String mailSearchList(HttpServletRequest request) {
//		return "";
//	}
	
	// 환경설정
	@RequestMapping("settings.ma")
	public String settingMail() {
		return "";
	}
	
	// 메일쓰기페이지
	@RequestMapping("writeForm.ma")
	public String writeMailForm() {
		return "";
	}
	
	// 메일보내기
	@RequestMapping("send.ma")
	public String sendMail() {
		return "";
	}
	
	// 예약메일 보내기
	@RequestMapping("sendReserve.ma")
	public String sendReserveMail() {
		return "";
	}
	
	
	
	
	

	
	
	
	
	// 전체 메일함 검색
	@RequestMapping("searchList.ma") // HomeController를 여기로 리다이렉트 시키기 
	public String selectSearchMailList(int currentPage, Model model) {
		return null;
	}
	
	// 받은메일함
	@RequestMapping("receiveList.ma")
	public String selectReceiveMailList() {
		return null;
	}
	
	// 보낸메일함
	@RequestMapping("mail/sendList.ma")
	public String selectSencMailList() {
		return null;
	}
	
	// 임시보관함
	@RequestMapping("outBoxList.ma")
	public String selectOutBoxList() {
		return null;
	}
	
	// 휴지통
	@RequestMapping("trashList.ma")
	public String selectTrashMailList() {
		return null;
	}
	
	// 부재중 정보 조회
	@RequestMapping("absenceList.ma")
	public String selectAbsenceList() {
		return "";
	}
	
	// 부재중 추가
	@RequestMapping("put/absence.ma")
	public String insertAbsenceMail() {
		return "";
	}
	
	// 서명 추가
	@RequestMapping("put/sign.ma")
	public String insertSign() {
		return "";
	}
	
	// 서명정보 조회 
	@RequestMapping("sign.ma")
	public String selectSignList() {
		return "";
	}
}
