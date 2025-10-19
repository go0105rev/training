package co.jp.mental.domain;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import co.jp.mental.Output;
import co.jp.mental.service.test.TestService;

@RestController
public class MentalController {

    @Autowired
    TestService testService;

    private Output controller(Model model,HttpServletRequest req,HttpServletResponse res) {
        return testService.run();
    }
    
    @GetMapping("/index")
    public Output getIndex(Model model,HttpServletRequest req,HttpServletResponse res) {
        return controller(model,req,res);
    }

    @PostMapping("/index")
    public Output postIndex(Model model,HttpServletRequest req,HttpServletResponse res) {
        return controller(model,req,res);
    }
}
