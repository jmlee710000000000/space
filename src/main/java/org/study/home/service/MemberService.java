package org.study.home.service;

import java.util.List;

import org.study.home.model.MemberDTO;

public interface MemberService {
	

	 void memberInsert(MemberDTO dto);
	   
	String login(MemberDTO dto);

	/* void memberIDcheck(String user_id); */
	public String idCheck(String user_id);
	
	public String nickCheck(String user_nick);
	public String emailCheck(String user_email);
	 void memberDelete(String user_id);
	 List<MemberDTO> userList();
	}
	 
