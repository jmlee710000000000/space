package org.study.home.controller;

import java.util.List;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.study.home.model.MemberDTO;
import org.study.home.service.MemberService;
//이메일 임포트
import org.springframework.core.io.FileSystemResource;
import java.io.File;
import java.lang.System.Logger;

import javax.mail.internet.MimeMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;





@Controller
public class MemberController {
//	이메일인증
	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	private MemberService memberService;

	@PostMapping("/memberInsert")
	public String registProcess(/* @RequestParam("user_id")String user_id, */ MemberDTO dto) {
		/* memberService.memberIDcheck(user_id); */
		memberService.memberInsert(dto);
		return "redirect:/community";
	}

	@GetMapping("/moveLogin")
	public String moveLogin() {

		return "board/login";
	}

	@GetMapping("/moveRegist")
	public String moveRegist() {
		return "board/Regist";
	}

	@GetMapping("/moveMakeWeb2")
	public String moveMakeWeb2() {
		return "board/makeweb2";
	}

	@GetMapping("/moveMakeWeb3")
	public String moveMakeWeb3() {
		return "board/makeweb3";
	}

	@GetMapping("/moveMakeWeb4")
	public String moveMakeWeb4() {
		return "board/makeweb4";
	}

	@GetMapping("/moveMakeWeb5")
	public String moveMakeWeb5() {
		return "board/makeweb5";
	}

	@GetMapping("/moveMemberUpdate")
	public String moveMemberUpdate() {
		return "board/memberUpdate";
	}

	@GetMapping("/moveMemberRead")
	public String moveMemberRead() {
		return "board/memberRead";
	}

	@PostMapping("/login")
	public String login(MemberDTO dto, HttpServletRequest request, RedirectAttributes rttr) {
		System.out.println(dto);

		String result = memberService.login(dto);
		if (result.equals("Success")) {
			HttpSession session = request.getSession();
			session.setAttribute("user_id", dto.getUser_id());
			return "redirect:/";
		} else {
			rttr.addFlashAttribute("msg", false);
			return "redirect:/moveLogin";
		}
	}

	@GetMapping("/userList")
	public String userList(Model model) {

		List<MemberDTO> list = memberService.userList();
		model.addAttribute("list", list);
		System.out.println("list값" + list);
		return "board/adminMember";
	}

	@GetMapping("/adminMember")
	public String adminMember(Model model) {

		List<MemberDTO> list = memberService.userList();
		model.addAttribute("list", list);

		return "board/adminMember";
	}

	@GetMapping("/memberDelete")
	public String memberDelete(@RequestParam("user_id") String user_id) {

		System.out.println("user_id 값 확인" + user_id);
		memberService.memberDelete(user_id);

		return "redirect:/adminMember";
	}

	@GetMapping("/memberRead")
	public String memberRead(@RequestParam("user_id") String user_id, Model model) {
		System.out.println("111111111111" + user_id);
		MemberDTO dto = memberService.memberRead(user_id);
		model.addAttribute("dto", dto);
		return "board/memberRead";
	}

//	   @GetMapping("/memberUpdate")
//	   public String memberUpdate(@RequestParam("m_no")String m_no, Model model) {
//	      MemberDTO dto=   memberService.memberRead(m_no);
//	       model.addAttribute("dto",dto);
//	      return "member/memberUpdate";
//	   }
//	   
//	   @PostMapping("/memberUpdate")
//	   public String memberUpdateProcess(MemberDTO dto) {
//	      memberService.memberUpdate(dto);
//	      System.out.println(dto.toString());
//	      
//	      return "redirect:/memberRead?m_no="+dto.getM_no();
//	   }


	@PostMapping("/idCheck")
	@ResponseBody
	public String idCheck(@RequestParam("user_id") String user_id, RedirectAttributes rttr) {
		String result = memberService.idCheck(user_id);
		if (result.equals("useId")) {
			System.out.println("baaaaaaaaaaaad");
			rttr.addFlashAttribute("bad", false);
			return "bad";
		} else {
			System.out.println("gooooooooooooood");
			rttr.addFlashAttribute("good", true);
			return "good";
		}
	}

	@PostMapping("/nickCheck")
	@ResponseBody
	public String nickCheck(@RequestParam("user_nick") String user_nick, RedirectAttributes rttr) {
		String result = memberService.nickCheck(user_nick);
		if (result.equals("useUser_nick")) {
			System.out.println("user_nickbaaaaaaaaaaaad");
			rttr.addFlashAttribute("bad", false);
			return "bad";
		} else {
			System.out.println("user_nickgooooooooooooood");
			rttr.addFlashAttribute("good", true);
			return "good";
		}
	}

	@PostMapping("/emailCheck")
	@ResponseBody
	public String emailCheck(@RequestParam("user_email") String user_email, RedirectAttributes rttr) {
		String result = memberService.emailCheck(user_email);
		if (result.equals("useUser_email")) {
			System.out.println("user_emailbaaaaaaaaaaaad");
			rttr.addFlashAttribute("bad", false);
			return "bad";
		} else {
			System.out.println("user_emailgooooooooooooood");
			rttr.addFlashAttribute("good", true);
			return "good";
		}
	}

	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {

		HttpSession session = request.getSession();
		session.invalidate();

		return "redirect:/";
	}
	
	@RequestMapping(value = "/sendMail", method = RequestMethod.GET)
    public void sendMailTest() throws Exception{
        
        String subject = "test 메일";
        String content = "메일 테스트 내용";
        String from = "wklee1999@naver.com";
        String to = "wklee1999@naver.com";
        
        try {
            MimeMessage mail = mailSender.createMimeMessage();
            MimeMessageHelper mailHelper = new MimeMessageHelper(mail,true,"UTF-8");
            // true는 멀티파트 메세지를 사용하겠다는 의미
            
            /*
             * 단순한 텍스트 메세지만 사용시엔 아래의 코드도 사용 가능 
             * MimeMessageHelper mailHelper = new MimeMessageHelper(mail,"UTF-8");
             */
            
            mailHelper.setFrom(from);
            // 빈에 아이디 설정한 것은 단순히 smtp 인증을 받기 위해 사용 따라서 보내는이(setFrom())반드시 필요
            // 보내는이와 메일주소를 수신하는이가 볼때 모두 표기 되게 원하신다면 아래의 코드를 사용하시면 됩니다.
            //mailHelper.setFrom("보내는이 이름 <보내는이 아이디@도메인주소>");
            mailHelper.setTo(to);
            mailHelper.setSubject(subject);
            mailHelper.setText(content, true);
            // true는 html을 사용하겠다는 의미입니다.
            
            FileSystemResource file = new FileSystemResource(new File("D:\\test.txt")); 
            mailHelper.addAttachment("test.txt", file);

            /*
             * 단순한 텍스트만 사용하신다면 다음의 코드를 사용하셔도 됩니다. 
             */
            mailHelper.setText(content);
            mailSender.send(mail);
            
        } catch(Exception e) {
            e.printStackTrace();
        }
        
    }
	/* 이메일 인증 */
    @RequestMapping(value="/mailCheck", method=RequestMethod.GET)
    @ResponseBody
    public void mailCheckGET(String user_email) throws Exception{
        
        /* 뷰(View)로부터 넘어온 데이터 확인 */
		
		
		logger.info("이메일 데이터 전송 확인"); 
		logger.info("인증번호 : " + user_email);
		System.out.println();
    	
    }
 


}
