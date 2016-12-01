package pro.front;

import java.io.File;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import pro.inter.ThingsMapper;
import pro.model.Things;


@RequestMapping("/r")
@Controller("ReleaseController")
public class ReleaseController  extends HttpServlet implements ServletContextAware{
	private ServletContext servletContext;
	@Override
	public void setServletContext(ServletContext context) {
		this.servletContext  = context;
	}
	@Resource(name="thingsMapper")
	private ThingsMapper manager;
	@RequestMapping("/release")
	public String release(){
		return "release";
	}
	@RequestMapping(value="/up",method=RequestMethod.POST)
	public String upload(String type,String addr,String tclass,String tel,String name,String price,@RequestParam("file1")CommonsMultipartFile file,HttpServletRequest req)throws Exception{
		HttpSession session=req.getSession();
		String uname=(String) session.getAttribute("username");
		//System.out.print(uname+"111111111");
		if(uname!=null){
			String path = this.servletContext.getRealPath("/fileupload/");  
			System.out.println(path);
			String fileName = file.getOriginalFilename();
			String fileType = fileName.substring(fileName.lastIndexOf("."));
			//System.out.println(fileType);
			String temp=new Date().getTime() + fileType;
			File file2 = new File(path,temp); 
			try {
				file.getFileItem().write(file2); 
			} catch (Exception e) {
		    e.printStackTrace();}
		Things things=new Things();
		things.settType(type);
		things.settAddr(addr);
		things.settClass(tclass);
		things.settName(name);
		things.settPrice(price);
		things.settPic(temp);
		things.settTel(tel);
		things.settUName(uname);
		manager.insert(things);
		return "redirect:/index.html;";
	}
		else{
			return "redirect:/index.html";
		}
		}
	}

