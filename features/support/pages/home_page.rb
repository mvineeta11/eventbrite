require_relative 'base_page'

class HomePage < BasePage

  page_url BASE_URL

  link(:go_to_signup_page, class: 'header-link gh-signup primary-link js-d-track-link js-modal-auth show-large')
  text_field(:signup_email, id: 'signup-email')
  text_field(:signup_password, id: 'signup-password')
  button(:submit_credentials_to_signup, class: 'btn btn--epic btn--block')
  link(:go_to_login_page, class:'header-link primary-link js-d-track-link js-modal-auth show-large')
  button(:submit_credentials_to_login, class:'btn btn--epic btn--block')
  text_field(:login_email, id:'login-email')
  text_field(:login_password, id:'login-password')
  link(:browse_events, class:'header-link gh-discover js-d-track-link js-xd-janus-checkpoint-link')

  # def initialize_page
  #   sign_up_element.when_present 5
  # end
  def signup_with(email_address,password)
    self.signup_email = email_address
    self.signup_password = password
    submit_credentials
  end

  def login_with(email_address,password)
    go_to_login_page
    self.login_email = email_address
    self.login_password = password
    submit_credentials_to_login
  end
end