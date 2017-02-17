
Given(/^I am on Eventbrite website$/) do
  visit HomePage
end

# And(/^I am not signed up$/) do
#   on(HomePage).should_contain_text "Sign up"
# end

When(/^I successfully sign up to Eventbrite$/) do
 on(HomePage) do |home_page|
   home_page.go_to_signup_page
   home_page.signup_with 'vineeta.mandava@example.com', 'P4ssw0rd'
 end

end


And(/^I want to host an event$/) do
pending
end