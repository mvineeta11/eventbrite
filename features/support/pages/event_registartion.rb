require_relative 'base_page'

class EventRegistartion < BasePage

  page_url BASE_URL+ '/d/oh--powell/events/'

  div(:first_conference_title, text:'Bridgewater Banquet & Conference Center, Powell')
  select_list(:number_of_tickets, id:'quant_51985494_None')
  span(:start_registartion, class:'button_css')

  def select_first_event
    first_conference_title_element.click
  end

  def choose_number_of_tickets(number_of_tickets)
    self.number_of_tickets = number_of_tickets
  end
end