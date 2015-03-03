package com.springapp.mvc.home;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;

@Controller
public class HelloController
{
    @RequestMapping("/hello")
    public String printHello(ModelMap model)
    {
        model.addAttribute("message", "Hello Spring MVC Framework!");
        model.addAttribute("time", new Date().toString());
        return "home/hello";
    }
}