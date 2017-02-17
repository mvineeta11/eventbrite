Given(/^I successfully log in with valid credentials$/) do
  visit(HomePage).login_with 'vineeta.mandava@example.com', 'P4ssw0rd'
end

And(/^I create an event$/) do
  on(CreateEvent).enter_details_to_create_event
end


And(/^I select event type$/) do
  on(CreateEvent) do |create_event|
    create_event.event_type.each do |event|
     event.selected_event = '12'
    end
  end
end