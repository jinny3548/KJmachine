package com.kjmachine.company;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MailController {

	@Autowired
	private JavaMailSender mailSender;
	
	@RequestMapping(value = "/mailSend")
	public String mailSending(HttpServletRequest request, RedirectAttributes rttr) {
		
		String setfrom = "dmswls354861@gamail.com";
		String tomail = "dmswls3548@kjmachines.com"; // 받는 사람 이메일
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String content = request.getParameter("content");

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message,
					false, "UTF-8");

			
			messageHelper.setFrom(setfrom); 
			messageHelper.setTo(tomail); 
			messageHelper.setSubject("게시글 확인"); 
	 		messageHelper.setText("<html><head></head><body><div style=\"width:100%\">\r\n"
	 				+ "\r\n"
	 				+ "  <div style=\"max-width:600px;margin:0 auto;padding:60px 0 30px 0;font-family:'Roboto',Arial,Helvetica,sans-serif;font-size:16px;line-height:1.5;border:1px solid #e2e2e2\">\r\n"
	 				+ "\r\n"
	 				+ "    <div align=\"center\" style=\"padding-right:0px;padding-left:0px\" class=\"logo-area\">\r\n"
	 				+ "      <div style=\"font-size:1px;line-height:20px\">&nbsp;</div><a href=\"https://review.hunt.town/?ref=yh-gmail\" style=\"outline:none\" target=\"_blank\"> <img align=\"center\" border=\"0\" src=\"https://i.imgur.com/9m41pZx.png\" alt=\"Logo\" title=\"Logo\" style=\"text-decoration-line: none; height: auto; border: none; width: 100%; max-width: 143px; display: block;\" width=\"143\"></a>\r\n"
	 				+ "      <div style=\"font-size:1px;line-height:20px\">&nbsp;</div>\r\n"
	 				+ "    </div>\r\n"
	 				+ "\r\n"
	 				+ "    <hr style=\"border:0;border-top:solid 1px #e2e2e2;width:90%;margin:30px auto\" class=\"horizontal-line\">\r\n"
	 				+ "\r\n"
	 				+ "    <div style=\"max-width:90%;margin-left:auto;margin-right:auto;margin-top:40px\" class=\"nomal-paragraph\">\r\n"
	 				+ "\r\n"
	 				+ "      <div style=\"margin-top:20px\">\r\n"
	 				+ "       새로운 문의글이 등록되었습니다. 확인해주세요.\r\n"
	 				+ "      </div>\r\n"
	 				+ "\r\n"
	 				+ "    </div>\r\n"
	 				+ "\r\n"
	 				+ "    <div style=\"max-width:90%;margin-left:auto;margin-right:auto;margin-top:20px\" class=\"bullet-point\">\r\n"
	 				+ "      <ul>\r\n"
	 				+ "        <li>이름: " + name + "</li>\r\n"
	 				+ "        <li>이메일: " + email + "</li>\r\n"
	 				+ "        <li>문의내용: " + content + "</li>\r\n"
	 				+ "      </ul>\r\n"
	 				+ "    </div>\r\n"
	 				+ "\r\n"
	 				+ "    <div align=\"center\" style=\"padding-right:0px;padding-left:0px;margin-top:40px\" class=\"full-image\">\r\n"
	 				+ "      <img align=\"center\" border=\"0\" src=\"https://steemitimages.com/640x0/https://cdn.steemitimages.com/DQmdZZLcyLv6Z1BXQ7mfarYq5a2MnAhimaJfCq2KAxYoSKT/main.png\" alt=\"Image\" title=\"Image\" style=\"border: 0px; height: auto; width: 100%; display: block;\">\r\n"
	 				+ "    </div>\r\n"
	 				+ "\r\n"
	 				+ "    <div style=\"max-width:90%;margin-left:auto;margin-right:auto;margin-top:40px\" class=\"nomal-paragraph\">\r\n"
	 				+ "\r\n"
	 				+ "    </div>\r\n"
	 				+ "\r\n"
	 				+ "    <div align=\"center\" style=\"padding-top:40px;padding-right:10px;padding-bottom:10px;padding-left:10px\">\r\n"
	 				+ "      <a href=\"#\" style=\"text-decoration-line: none; display: inline-block; color: rgb(255, 255, 255); background-color: rgb(0, 0, 0); border-radius: 60px; width: auto; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0); padding: 10px 25px;\" target=\"_blank\">Learn More</a>\r\n"
	 				+ "    </div>\r\n"
	 				+ "\r\n"
	 				+ "    <div style=\"text-align:center;\">\r\n"
	 				+ "      <a style=\"font-size:12px;color:silver\" href=\"mailto:your@email.com?subject=Unsubscribe!&amp;body=I&nbsp;don't&nbsp;want&nbsp;to&nbsp;receive&nbsp;an&nbsp;email&nbsp;from&nbsp;your&nbsp;service!\" target=\"_blank\">Unsubscribe from emails</a>\r\n"
	 				+ "    </div>\r\n"
	 				+ "\r\n"
	 				+ "  </div>\r\n"
	 				+ "</div></body></html>", true);

			System.out.println("이름: " + name + "\n" + "이메일: " + email + 
									"\n" + "내용: " + content);
			mailSender.send(message);
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return "redirect:/KJ";
	}
	
	@RequestMapping(value = "/mailNumSend")
	public String mailNumSending(HttpServletRequest request, RedirectAttributes rttr) {
		
		String num = request.getParameter("num");
		String email = request.getParameter("email");
		String setfrom = "dmswls354861@gamail.com";
		String tomail = email; // 받는 사람 이메일

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message,
					true, "UTF-8");

			messageHelper.setFrom(setfrom); 
			messageHelper.setTo(tomail); 
			messageHelper.setSubject("이메일 인증"); 
			messageHelper.setText("이메일: " + email + "\n" + 
					"인증번호: " + num ); // 메일 내용

			System.out.println("이메일: " + email + "\n" + 
					"인증번호: " + num );
			
			mailSender.send(message);
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return "redirect:/KJ";
	}
}
