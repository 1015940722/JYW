package pro.back;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import pro.inter.UserMapper;
import pro.model.User;

@RequestMapping("/l")
@Controller("LoginController")

public class LoginController {
	@Resource(name="userMapper")
	private UserMapper manager;
	@RequestMapping("/Login")
	public String login(){
		return "Login";
	}
	
	@RequestMapping(value="/loginit",method=RequestMethod.POST)
	public String loginit(String username,String password,ModelMap map,HttpServletRequest request, RedirectAttributes redirectAttributes){
		User user=manager.matchUser(username, password);
		if(user==null){
			map.put("warn","用户名或密码错误");
			return "Login";
		}
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		Date d=new Date();
		
		HttpSession session=request.getSession();
		session.setAttribute("username", username);
		session.setAttribute("time",df.format(new Date()));
		//map.put("status","1");
		 redirectAttributes.addFlashAttribute("username",username );    
		return "redirect:/index.html";
	}
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String register(String username,String password,HttpServletRequest request){
		User user=new User();
		user.setuName(username);
		user.setuPassword(password);
		manager.insert(user);
		return"Login";
	}
	@RequestMapping("exit")
	public String exit(HttpServletRequest req,RedirectAttributes redirectAttributes){
		HttpSession session=req.getSession();
		session.setAttribute("username", null);
		redirectAttributes.addFlashAttribute("username",null);
		return"redirect:/index.html";
	}
}
