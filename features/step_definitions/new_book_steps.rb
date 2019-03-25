When('I am on the New Book Page') do
  visit new_book_path
end

Then('I expect to see {string}') do |string|
  expect(page).to have_content string
end

Then('I fill {string} with {string}') do |_string, _string2|
  fill_in 'Title',	with: 'React'
  fill_in 'ISBN',	with: '12345678'
  fill_in 'Year',	with: '2017'
end

Then('I click on {string}') do |_string|
  click_button 'Save Book'
end
