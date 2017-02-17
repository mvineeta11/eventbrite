

Then(/^I am on welcome page$/) do
  on(HomePage).should_contain_text 'Find your next experience'
end