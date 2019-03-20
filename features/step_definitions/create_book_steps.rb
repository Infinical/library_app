When('I am on the Create New Book Page') do
  visit books_create_path
end

Then('I expect to see {string}') do |string|
  expect(page).to have_content string
end

Then('I fill {string} with {string}') do |_string, _string2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I click on {string}') do |_string|
  pending # Write code here that turns the phrase above into concrete actions
end
