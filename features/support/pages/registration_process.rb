require_relative 'base_page'

class RegistrationProcess < BasePage

  page_url BASE_URL+ '/register?'
  text_field(:first_name, id:'first_name')
  text_field(:last_name, id:'last_name')
  text_field(:attendee_first_name, id:'id_attendee_1_first_name')
  text_field(:attendee_last_name, id:'id_attendee_1_last_name')
  text_field(:attendee_job_title, id:'id_attendee_1_job_title')
  text_field(:attendee_company_name, id:'id_attendee_1_company')
  text_field(:attendee_work_address_line1, id:'attendee_1_work_address_1')
  text_field(:attendee_work_address_line2, id:'attendee_1_work_address_2')
  text_field(:attendee_work_city, id:'attendee_1_work_city')
  text_field(:attendee_work_zipcode, id:'attendee_1_work_zip')
  text_field(:attendee_work_phone, id:'id_attendee_1_work_phone')
  checkbox(:heard_from, id:'attendee_1_34468254_option')
  radio_button(:notification,id:'attendee_1_38560059_option')
  link(:submit_details, text:'Complete Registration')

  def register(first_name,last_name,attendee_first_name,attendee_last_name,job_title,company_name,work_address,work_city,work_zipcode,work_phone)
    self.first_name=first_name
    self.last_name=last_name
    self.attendee_first_name=attendee_first_name
    self.attendee_last_name=attendee_last_name
    self.attendee_job_title=job_title
    self.attendee_company_name=company_name
    self.attendee_work_address_line1=work_address
    self.attendee_work_city=work_city
    self.attendee_work_zipcode=work_zipcode
    self.attendee_work_phone=work_phone
    heard_from_element.click
    notification_element.click
    submit_details
  end

end