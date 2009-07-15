class ContactsController < ApplicationController
  
  layout "layout2"
  
  def contacts_mailer
    # raise params.to_yaml
    #grab the params to pass to the redirect
    @form = params
    
    contactus = ApplicationMailer.create_contact_mailer(params)
    contactus.set_content_type("text/html")
    ApplicationMailer.deliver(contactus)
      flash[:notice] = "Your Message has been sent."
      respond_to do |format|
        format.html {
          render :partial =>  'contacts/contact_thank_you', 
                             :layout => "layout4", 
                             :locals => {:form => @form} }
        format.js { }
      end
  end
  
end
