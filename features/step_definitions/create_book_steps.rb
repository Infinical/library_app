When('I am on the Create New Book Page') do
  visit books_create_path
end

Then('I expect to see {string}') do |string|
  expect(page).to have_content string
end
