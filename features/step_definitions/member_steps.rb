
When /^I create new member with details and attributes$/ do
end

Given /^I am not already onboarded$/ do
  # dummy
end


Then /^the response should be:$/ do |json|
  JSON.parse(last_response).should == JSON.parse(json)
end


When(/^I list all members$/) do
  # Call endpoint
  get 'members'
end