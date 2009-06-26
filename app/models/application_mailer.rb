class ApplicationMailer < ActionMailer::Base
  
  def contact_mailer(contact, sent_at = Time.now)
      recipients    "support@hcinsight.com"
      from          "HealthCare Insight :: Contact Us"
      subject       contact[:contact_us_subject]
      body          :contact => contact, :sent_on => sent_at
  end
  
end
