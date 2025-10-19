package co.jp.mental.domain;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MentalController {

    private void controller(Model model,HttpServletRequest req,HttpServletResponse res) {
        
    }
    
    @GetMapping("/index")
    public void getIndex(Model model,HttpServletRequest req,HttpServletResponse res) {
        controller(model,req,res);
    }

    @PostMapping("/index")
    public void postIndex(Model model,HttpServletRequest req,HttpServletResponse res) {
        controller(model,req,res);
    }
}
