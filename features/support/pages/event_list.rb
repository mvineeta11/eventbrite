class EventList
  include PageObject

  select_list(:selected_event, id:'id_group-privacy_and_promotion-event_format')
end