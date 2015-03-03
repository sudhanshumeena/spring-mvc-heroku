package com.springapp.mvc.forms.studentForm.controller;

import com.springapp.mvc.forms.studentForm.model.Form;
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
@RequestMapping("/studentForm")
public class FormController
{
    @Autowired
    @Qualifier("formValidator")
    private Validator validator;

    @InitBinder
    private void initBinder(WebDataBinder binder)
    {
        binder.setValidator(validator);
    }

    @RequestMapping(method = RequestMethod.GET)
    public String initForm(Model model)
    {
        Form form = new Form();
        form.setHiddenMessage("Hidden message from Sudhanshu Meena");
        model.addAttribute("form", form);
        initModelList(model);
        return "/forms/studentForm/form";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String submitForm(Model model, @Validated Form form, BindingResult result)
    {
        if(result.hasErrors())
        {
            initModelList(model);
            return  "/forms/studentForm/form";
        }
        else
        {
            model.addAttribute("form", form);
            return "/forms/studentForm/success";
        }
    }

    private void initModelList(Model model)
    {
        List<String> courses = new ArrayList<String>();
        courses.add("Maths");
        courses.add("Physics");
        courses.add("Geometry");
        courses.add("Algebra");
        courses.add("Painting");

        List<String> genders = new ArrayList<String>();
        genders.add("Male");
        genders.add("Female");

        List<String> tutors = new ArrayList<String>();
        tutors.add("Mrs. Smith");
        tutors.add("Mr. Johnson");
        tutors.add("Mr. Clarks");

        model.addAttribute("courses", courses);
        model.addAttribute("genders", genders);
        model.addAttribute("tutors", tutors);
    }
}
