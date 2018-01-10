package com.molcon.phibase.validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.molcon.phibase.command.PhibaseRegistrationCommand;

@Component
public class PhibaseValidator implements Validator{
	

	 private Pattern pattern;  
	 private Matcher matcher;  
	  
	 private static final String EMAIL_PATTERN = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"  
	   + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";  
	 String ID_PATTERN = "[0-9]+";  
	 String STRING_PATTERN = "[a-zA-Z]+";  
	 String MOBILE_PATTERN = "[0-9]{10}";  
	
	
	public boolean supports(Class<?> arg0) {
		return false;
	}

	public void validate(Object target, Errors errors) {
		
		PhibaseRegistrationCommand phibaseRegistration=(PhibaseRegistrationCommand)target;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "name.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "organisation", "org.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "organisationtype", "orgtype.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"email", "email.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "country", "country.required");
		
		
		
		//email
		  if (!(phibaseRegistration.getEmail() != null && phibaseRegistration.getEmail().isEmpty())) {  
		   pattern = Pattern.compile(EMAIL_PATTERN);  
		   matcher = pattern.matcher(phibaseRegistration.getEmail());  
		   if (!matcher.matches()) {  
		    errors.rejectValue("email", "email.incorrect");  
		   }  
		  }  
	}

}
