When('I am on the Edit Book Page') do
  book = Book.find_by(title: 'React')
  visit(edit_book_path(book))
end

Given('the following book exists') do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  table.hashes.each do |book|
    Book.create!(book)
  end
end

Then('I change {string} from {string} to {string}') do |field, _original, _replacement|
  fill_in field, with: replacement
end

# Then("there should be no book with isbn {string}") do |string|
#   book = Book.get_by(isbn: isbn)
#   expect(book).to be_nil
# end

Then('there should be no book with {string} {string}') do |_field, value|
  book = Book.find_by(isbn: value)
  expect(book).to be_nil
end
