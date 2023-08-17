package cgg.spring.mvc.controllers;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/first")
public class HomeController {

	@RequestMapping("/home")
	public String home(Model model) {
		System.out.println("this is home url");
		
		model.addAttribute("name","Fathima");
		model.addAttribute("id",1234);
		
		List<String> friends = new ArrayList<>();
		friends.add("Shanthi Maam");
		friends.add("Ganga");
		friends.add("Kavitha");
		friends.add("Abc");
		friends.add("Xyz");
		
		model.addAttribute("f",friends);
		
		return "index";
	}
	
	@RequestMapping("/help")
	public ModelAndView help() {
		System.out.println("This is help controller");
		
		//creating model and view object
		ModelAndView modelAndView = new ModelAndView();
		
		//setting the data
		modelAndView.addObject("name","Fathima");
		modelAndView.addObject("rollnumber",1234);
		LocalDateTime now = LocalDateTime.now();
		modelAndView.addObject("time",now);
		
		List<Integer> marks= new ArrayList<>();
		marks.add(100);
		marks.add(80);
		marks.add(77);
		marks.add(67);
		marks.add(90);
		
		modelAndView.addObject("marks",marks);
		
		//setting the view name
		modelAndView.setViewName("help");
		
		return modelAndView;
	}
}
