require_relative 'base_page'

class CreateEvent < BasePage

  page_url BASE_URL+ '?show_onboarding=1&internal_ref=login'

  link(:go_to_create_event_page, class:'btn header-link btn--link js-d-track-link js-xd-janus-checkpoint-link')
  text_field(:event_title, id:'id_group-details-name')
  text_field(:location, class: 'js-location-input-new placeholder')
  text_field(:venue_name, class:'js-location-edit-venue l-mar-top-1 placeholder')
  text_field(:address_line_1,class:'js-location-edit-address_1 l-mar-top-1 js-xd-cep-street placeholder')
  text_field(:address_line_2, class:'js-location-edit-address_2 l-mar-top-1 js-xd-cep-neighborhood placeholder')
  text_field(:city, class:'js-location-edit-city l-mar-top-1 js-xd-cep-city')
  text_field(:state, class:'js-location-edit-state l-mar-top-1 js-xd-cep-state')
  text_field(:zipcode, class:'js-location-edit-postal_code l-mar-top-1 js-xd-cep-input')
  select(:country, :class =>'js-d-select-box js-location-edit-country')
  text_field(:start_date, class:'js-dtp-datepicker-input date hasDatepicker')
  text_field(:start_time, class:'js-dtp-timepicker-input time form__input--xshort js-timepicker-input')
  text_field(:finish_date, id:'dp1487188531695')
  text_field(:end_time, class:'js-dtp-timepicker-input time form__input--xshort js-timepicker-input')

  in_iframe(:id => 'id_group-details-description_ifr') do |frame|
    body(:event_description, :id => 'tinymce', :frame => frame)
  end
  link(:type_of_ticket, class:'l-mar-top-1 js-create-ticket btn btn--ico btn--secondary')
  #link(:save_details, class:'btn btn--secondary')
  text_field(:ticket_name, class:'form__input form__input--full-width js-ticket-name')
  text_field(:number_of_tickets_available, class:'form__input--full-width js-quantity-input')
  page_sections(:event_type,'EventType', class:'custom-select-value')


  def enter_details_to_create_event
    go_to_create_event_page
    self.event_title = 'Think Big & Test Big'
    self.location = '1801 E 12 th Cleveland, OH, United States'
    self.start_date_element.set('03/04/2018')
    self.start_time_element.set('09:30am')
    # self.finish_date_element.set('03/05/2018')
    # self.finish_time_element.set('04:00pm')
    self.event_description_element.click
    self.event_description_element.send_keys "testing is good"
    type_of_ticket_element.click
    self.ticket_name = 'John'
    self.number_of_tickets_available = '30'
  # self.event_type_element.option('Rally').when_present.select
   # self.seasonal_holiday.select_value('')
    #save_detail
  end
end