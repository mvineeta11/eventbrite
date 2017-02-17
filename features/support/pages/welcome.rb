require_relative 'base_page'

class Welcome < BasePage

  page_url BASE_URL+ '?show_onboarding'

  link(:start_hosting_process, class:'onboarding-lightbox__footer__segment has-centered-inline-content')
end