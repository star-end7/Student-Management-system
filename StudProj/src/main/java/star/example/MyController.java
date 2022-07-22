package star.example;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class MyController {
	

	@Autowired
	MyDAO dao;
	@Autowired
	LoginDAO dao1;
	
	@RequestMapping("HomePage")
	public ModelAndView callHomePagePage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("HomePage");
		return mv;
	}
	
	
	@RequestMapping("AboutPage")
	public ModelAndView AboutPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("AboutPage");
		return mv;
	}
	

	@RequestMapping("ContactPage")
	public ModelAndView ContactPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("ContactPage");
		return mv;
	}
	@RequestMapping("TimetablePage")
	public ModelAndView TimetablePage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("TimetablePage");
		return mv;
	}
	@RequestMapping("Home2Page")
	public ModelAndView Home2Page() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Home2Page");
		return mv;
	}
	
	@RequestMapping("RegPage")
	public ModelAndView RegPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("RegPage");
		return mv;
	}
	@RequestMapping("Register")
	public ModelAndView register (StudRegPage studregpage) {
		ModelAndView mv = new ModelAndView();
		dao.save(studregpage);
		mv.setViewName("WelcomePage");
		mv.addObject("msg", "Student data Inserted");
		return mv;
	}

			
	
	@RequestMapping("WelcomePage")
    public ModelAndView login(StudRegPage login) {
        ModelAndView mv = new ModelAndView();
        System.out.println("username="+login.getUsername());
       Optional<StudRegPage> obj = dao1.findById(login.getUsername());
       
        if(obj.isPresent()) {
            StudRegPage tmp=obj.get();
        if(tmp.getPassword().equals(login.getPassword())) {
           mv.setViewName("HomePage");
        }
        else {
        	mv.setViewName("WelcomePage");
        	mv.addObject("msg","LoginFailed");
        }
        }
        return mv;
    }

	@RequestMapping("Welcome")
	public ModelAndView WelcomePage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WelcomePage");
		return mv;
	}
}


