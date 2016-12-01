package pro.back;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import pro.inter.ThingsMapper;
import pro.inter.UserMapper;
import pro.model.Things;

@RequestMapping("/P")
@Controller("PersonController")
public class PersonController {
	@Resource(name="userMapper")
	private UserMapper manager;
	@Resource(name="thingsMapper")
	private ThingsMapper tmanager;
	@RequestMapping("/main")
	public String main(){
		/*HttpSession session=req.getSession();
		session.getAttribute("username");*/
		return"Pindex";
	}
	@RequestMapping("/exit")
	public String exit(HttpServletRequest req,RedirectAttributes redirectAttributes){
		HttpSession session=req.getSession();
		session.setAttribute("username", null);
		redirectAttributes.addFlashAttribute("username",null);
		return"redirect:/index.html";
	}
	@RequestMapping("/index")
	public String returnindex(){
		return"redirect:/index.html";
	}
	@RequestMapping("/xiugai")
	public String xiugai(HttpServletRequest req,ModelMap map){
		HttpSession session=req.getSession();
		String user=(String) session.getAttribute("username");
		map.put("username", user);
		
		return "pass";
	}
	@RequestMapping("/editpassw")
	public String editp(String repassw,HttpServletRequest req,HttpServletResponse response,ModelMap map){
		HttpSession session=req.getSession();
		String uname=(String) session.getAttribute("username");
		manager.updatePassw(repassw, uname);
		map.put("status", "1");
		return "redirect:/P/index.htm";
	}
	@RequestMapping("/dellist")
	public String dellist(HttpServletRequest req,ModelMap map){
		HttpSession session=req.getSession();
		String user=(String) session.getAttribute("username");
		List<Things>thing=tmanager.selectByuser(user);
		map.put("thing", thing);
		return "book";
	}
	@RequestMapping("/delit")
	public String delit(Integer tid){
		tmanager.deleteByPrimaryKey(tid);
		return "redirect:/P/dellist.htm";
	}
	@RequestMapping("/mdel")
	public String mdel(String delitms){
		
		/*String items = request.getParameter("delitems");*/
        List<String> delList = new ArrayList<String>();
        String[] strs = delitms.split(",");
        for (String str : strs) {
            delList.add(str);
        }
        manager.batchDeletes(delList);
		return "book";
	}
}
