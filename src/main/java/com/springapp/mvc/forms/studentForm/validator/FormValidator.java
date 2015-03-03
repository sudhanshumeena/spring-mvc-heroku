package com.springapp.mvc.forms.studentForm.validator;

import com.springapp.mvc.forms.studentForm.model.Form;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import java.util.List;

public class FormValidator implements Validator
{
    private static final String EMAIL_PATTERN =
            "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+" +
                    "(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";

    @Override
    public boolean supports(Class<?> clazz)
    {
        return Form.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object target, Errors errors)
    {
        Form form = (Form) target;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "valid.name");
        if(! form.getEmail().matches(EMAIL_PATTERN))
        {
            errors.rejectValue("email", "valid.email");
        }
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "gender", "valid.gender");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "valid.password");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "confirmPassword", "valid.confirmPassword");
        if(! form.getPassword().equals(form.getConfirmPassword()))
        {
            errors.rejectValue("confirmPassword", "valid.confirmPasswordDifferent");
        }
        List<String> courses = form.getCourses();
        if(courses == null || courses.size() < 2)
        {
            errors.rejectValue("courses", "valid.courses");
        }
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "tutor", "valid.tutor");
    }
}
