package org.study.home.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
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

@Controller
public class MemberController {

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
	
	

	@PostMapping("/login")
	public String login(MemberDTO dto, HttpServletRequest request, RedirectAttributes rttr) {
		System.out.println("111111111111111");
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
	      
	    List<MemberDTO> list =   memberService.userList();
	      model.addAttribute("list",list);
	      System.out.println("list값"+ list);
	      return "board/adminMember";
	   }
	
	   @GetMapping("/adminMember")
	   public String adminMember(Model model) {
	      
	    List<MemberDTO> list =   memberService.userList();
	      model.addAttribute("list",list);
	      
	      return "board/adminMember";
	   }
	
	 @GetMapping("/memberDelete")
	   public String memberDelete(@RequestParam("user_id")String user_id) {
	      
	      System.out.println("user_id 값 확인"+user_id);
	      memberService.memberDelete(user_id);
	         
	      return "redirect:/adminMember";
	   }

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

}
