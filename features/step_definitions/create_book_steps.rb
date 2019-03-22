When('I am on the Create New Book Page') do
  visit books_create_path
end

Then('I expect to see {string}') do |string|
  expect(page).to have_content string
end

Then("I fill {string} with {string}") do |string, string2|
    fill_in "Book title",	with: "React" 
    fill_in "Book isbn",	with: "12345678" 
    fill_in "Year published",	with: "2017" 
end

Then("I click on {string}") do |string|
  click_button 'Save Book'
end
