When('I am on the New Book Page') do
  visit new_book_path
end

Then('I expect to see {string}') do |content|
  expect(page).to have_content content
end

Then('I fill {string} with {string}') do |field, value|
  fill_in field, with: value
end

Then('I click on {string}') do |string|
  click_button string
end

