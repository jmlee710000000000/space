package org.study.home.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.study.home.model.MemberDTO;

@Mapper
public interface MemberMapper {
	public MemberDTO login(MemberDTO dto);

	public String getRealPassword(String user_pw);

	public void memberInsert(MemberDTO dto);

	/* public void memberIDcheck(String user_id); */
	public String idCheck(String user_id);

	public String nickCheck(String user_nick);

	public String emailCheck(String user_email);

	public List<MemberDTO> userList();

	public void memberDelete(String user_id);

	public MemberDTO memberRead(String user_id);

}
