package com.springapp.mvc.forms.signupForm.controller;

import com.springapp.mvc.forms.signupForm.model.NewUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/signup")
public class NewUserController {
    @Autowired
    @Qualifier("newUserValidator")
    private Validator validator;

    @InitBinder
    private void initBinder(WebDataBinder binder) {
        binder.setValidator(validator);
    }

    @RequestMapping(method = RequestMethod.GET)
    public String initForm(Model model) {
        NewUser newUser = new NewUser();
        //        newUser.setReceiveNewsletter(true);
        //        newUser.setGender("Male");
        model.addAttribute("newUser", newUser);
        initModelList(model);
        return "forms/user/SignUp";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String submitForm(Model model, @Validated NewUser newUser, BindingResult bindingResult) {
        if(bindingResult.hasErrors()) {
            initModelList(model);
            return "forms/user/SignUp";
        } else {
            model.addAttribute("newUser", newUser);
            return "forms/user/SignUpSuccess";
        }
    }

    private void initModelList(Model model) {
        List<String> newsletterList = new ArrayList<String>();
        newsletterList.add("yes");
        newsletterList.add("no");

        List<String> genderList = new ArrayList<String>();
        genderList.add("Male");
        genderList.add("Female");

        List<String> javaSkillsList = new ArrayList<String>();
        javaSkillsList.add("Hibernate");
        javaSkillsList.add("Spring");
        javaSkillsList.add("Apache Wicket");
        javaSkillsList.add("Struts");
        javaSkillsList.add("Play");

        List<String> countryList = new ArrayList<String>();
        countryList.add("India");
        countryList.add("USA");
        countryList.add("UK");
        countryList.add("Brazil");
        countryList.add("Sri Lanka");

        model.addAttribute("newsletterList", newsletterList);
        model.addAttribute("genderList", genderList);
        model.addAttribute("countryList", countryList);
        model.addAttribute("skillList", javaSkillsList);
    }
}
