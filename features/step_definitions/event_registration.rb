Given(/^I am on homepage$/) do
  visit(HomePage)
end

And(/^I choose to browse events$/) do
  on(HomePage).browse_events
end

When(/^I select the event I want to go to$/) do
  on(EventRegistration).select_first_event
end

And(/^I purchase some tickets that are free$/) do
  on(EventRegistration) do |register|
      register.choose_number_of_tickets '1'
    register.start_registartion_element.click
    on(RegistrationProcess).register 'Hello','There','Hello','There','journalist and author','New York Post','1211 Avenue of the Americas','New York City','10036','1234567890'
  end
  end

Then(/^I successfully register$/) do
  on(OrderConfirmation).should_contain_text 'Thanks for your order'
end

