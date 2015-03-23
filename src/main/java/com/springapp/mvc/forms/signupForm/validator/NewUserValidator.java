package com.springapp.mvc.forms.signupForm.validator;

import com.springapp.mvc.forms.signupForm.model.NewUser;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class NewUserValidator implements Validator {
    private static final String EMAIL_PATTERN = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
    private static final String PHONE_PATTERN = "^[789]\\d{9}$";

    @Override
    public boolean supports(Class<?> clazz) {
        return NewUser.class.equals(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {
        NewUser newUser = (NewUser) target;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userName", "required.userName");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "required.password");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "confirmPassword", "required.confirmPassword");
        if(!newUser.getPassword().equals(newUser.getConfirmPassword())) {
            errors.rejectValue("confirmPassword", "valid.confirmPasswordDifferent");
        }

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "required.firstName");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastName", "required.lastName");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "gender", "valid.gender");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "required.email");
        if(!newUser.getEmail().matches(EMAIL_PATTERN)) {
            errors.rejectValue("email", "valid.email");
        }
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "mobileNo", "required.mobileNo");
        if(!newUser.getMobileNo().matches(PHONE_PATTERN)) {
            errors.rejectValue("mobileNo", "valid.mobileNoNoMatch");
        }
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "country", "required.country");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "javaSkills", "required.javaSkills");
    }
}
