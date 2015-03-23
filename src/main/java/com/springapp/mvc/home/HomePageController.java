package com.springapp.mvc.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomePageController {
    @RequestMapping("/")
    public String showHome() {
        return "redirect:hello";
    }
}
