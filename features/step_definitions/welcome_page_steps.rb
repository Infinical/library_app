When('I am on the welcome page') do
  visit root_path
end
Then('I should see {string}') do |string|
  expect(page).to have_content string
end
