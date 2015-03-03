package com.springapp.mvc.forms.studentForm.model;

import java.util.List;

public class Form
{
    private String name;
    private String email;
    private String gender;
    private String password;
    private String confirmPassword;
    private List<String> courses;
    private String tutor;
    private String hiddenMessage;

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public String getEmail()
    {
        return email;
    }

    public void setEmail(String email)
    {
        this.email = email;
    }

    public String getGender()
    {
        return gender;
    }

    public void setGender(String gender)
    {
        this.gender = gender;
    }

    public String getPassword()
    {
        return password;
    }

    public void setPassword(String password)
    {
        this.password = password;
    }

    public String getConfirmPassword()
    {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword)
    {
        this.confirmPassword = confirmPassword;
    }

    public List<String> getCourses()
    {
        return courses;
    }

    public void setCourses(List<String> courses)
    {
        this.courses = courses;
    }

    public String getTutor()
    {
        return tutor;
    }

    public void setTutor(String tutor)
    {
        this.tutor = tutor;
    }

    public String getHiddenMessage()
    {
        return hiddenMessage;
    }

    public void setHiddenMessage(String hiddenMessage)
    {
        this.hiddenMessage = hiddenMessage;
    }
}
