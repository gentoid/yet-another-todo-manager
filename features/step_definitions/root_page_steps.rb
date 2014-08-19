Given /^I am a guest$/ do
end

When /^I open root page$/ do
  visit root_path
end

Then /^I see short description and nice screenshot$/ do
  expect(page).to have_content('Yet another TODO manager')
  expect(page).to have_selector('.screenshot')
end

Given /^I am logged in$/ do
  Warden.test_mode!

  user = FactoryGirl.create :user
  login_as user, scope: :user
end

Then /^Application redirects me to my dashboard$/ do
  expect(current_path).to eq(dashboard_path)
end
