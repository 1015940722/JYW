package pro.front;



import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import pro.inter.ThingsMapper;
import pro.model.Things;

@RequestMapping("/")
@Controller("HelloWorld")
public class HelloWorld {
	@Resource(name="thingsMapper")
	private ThingsMapper manager;
	@RequestMapping("/index")
	public String index(ModelMap map){
		List<Things>t1=manager.selectBytype("男装/运动户外", 0, 8);
		/*List<Things>t2=manager.selectBytype("女装/内衣", 0, 8);
		List<Things>t3=manager.selectBytype("化妆品/个人护理", 0, 8);
		List<Things>t4=manager.selectBytype("手机/数码/电脑办公", 0, 8);
		List<Things>t5=manager.selectBytype("图书影像", 0, 8);
		
		map.put("t2", t2);
		map.put("t3", t3);
		map.put("t4", t4);
		map.put("t5", t5);*/
		System.out.print(11111);
		map.put("t1", t1);
		return "index";
	}
}
