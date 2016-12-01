package pro.front;


import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.ServletContextAware;

import pro.inter.ThingsMapper;
import pro.model.Things;

@Controller("ThingsController")
@RequestMapping("/t")
public class ThingsController extends HttpServlet implements ServletContextAware{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Resource(name="thingsMapper")
	private ThingsMapper manager;
	private ServletContext servletContext;
	private int pagesize = 8;
	@Override
	public void setServletContext(ServletContext context) {
		this.servletContext  = context;
	}
	public int getPageCount(){
		int a = manager.getCount();
		if(a%pagesize!=0){
			return a/pagesize+1;
		}else{
			return a/pagesize;
		}
	}
	public int getStartRow(int startPage){
		if(startPage<=1){
			startPage=1;
		}else if(startPage>this.getPageCount()){
			startPage=this.getPageCount();
		}
		return pagesize*(startPage-1);
	}
	
	@RequestMapping("/thingslist")
	public String findvedio(ModelMap map,Integer startpage){
		if(startpage==null||startpage<=0){startpage=1;}
		int pageCount = this.getPageCount();
		if(startpage>pageCount){startpage=pageCount;}
		int startline = this.getStartRow(startpage);
		List<Things> things = manager.findthings(startline,pagesize); 
		map.put("things", things);
		//map.put("cz",1);
		map.put("pagecount",pageCount);
		map.put("page",startpage);
		return "sale";
	}



	@RequestMapping("/tcontent")
	public String tcontent(Integer id,ModelMap map){
		Things thing=manager.selectByPrimaryKey(id);
		map.put("thing",thing);
		return "buy";
	}
	@RequestMapping("/searcha")
	public String tsearcha(String tname,ModelMap map,Integer startpage){
		List<Things> se=manager.selecLike(tname);
		if(startpage==null||startpage<=0){startpage=1;}
		int pageCount = this.getPageCount();
		if(startpage>pageCount){startpage=pageCount;}
		int startline = this.getStartRow(startpage);
		List<Things> things = manager.findthings(startline,pagesize); 
		//map.put("cz",1);
		map.put("pagecount",pageCount);
		map.put("page",startpage);
		map.put("se", se);
		return "search";
	}
}
