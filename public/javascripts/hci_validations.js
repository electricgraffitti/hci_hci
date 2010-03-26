// JS validations go here
jQuery.validator.addMethod("phoneUS", function(phone_number, element) {
    phone_number = phone_number.replace(/\s+/g, ""); 
	return this.optional(element) || phone_number.length > 9 &&
		phone_number.match(/^(1-?)?(\([2-9]\d{2}\)|[2-9]\d{2})-?[2-9]\d{2}-?\d{4}$/);
}, "Please specify a valid phone number");


$(document).ready(function() {
  
  // Validates a Nucleus Subscription
    $('#nucleus_form').validate({
      rules: {
        "nucleus_first_name": "required",
				"nucleus_last_name": "required",
        "nucleus_email": {required: true, email: true},
				"nucleus_phone": {required: true, phoneUS: true},
				"nucleus_company": "required",
				"nucleus_position": "required"
      },
      messages: {
        "nucleus_first_name": "First Name Required",
				"nucleus_last_name": "Last Name Required",
        "nucleus_email": {required: "Email Required", email: "Not a Valid Email"},
				"nucleus_phone": {required: "Phone Required", phoneUS: "invalid phone"},
				"nucleus_company": "Company Required",
				"nucleus_position": "Job Title Required"
      }
    });
    
    // Validates a Contact Form 
      $('#free_webinar').validate({
        rules: {
          "free_webinar_first_name": "required",
  				"free_webinar_last_name": "required",
          "free_webinar_email": {required: true, email: true},
  				"free_webinar_business_name": "required",
  				"free_webinar_position": "required"
        },
        messages: {
          "free_webinar_first_name": "First Name Required",
  				"free_webinar_last_name": "Last Name Required",
          "free_webinar_email": {required: "Email Required", email: "Not a Valid Email"},
  				"free_webinar_business_name": "Company Required",
  				"free_webinar_position": "Job Title Required"
        }
      });
});
