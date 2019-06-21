package com.kh.lgtw.scheduler.model.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.lgtw.scheduler.model.dao.SchedulerDao;
import com.kh.lgtw.scheduler.model.vo.Scheduler;

@Service
public class SchedulerServiceImpl implements SchedulerService{
	@Autowired
	private SchedulerDao sd;
	@Autowired
	SqlSession sqlSession;
	
	//개인캘린더 추가용 메소드
	@Override
	public int insertMemberScheduler(Scheduler sc) {
		
		return sd.insertMemberScheduler(sqlSession, sc);
	}
	


	

	 
	
	
	
}
