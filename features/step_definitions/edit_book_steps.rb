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

Then('I change {string} from {string} to {string}') do |field, original_value, replacement_value|
  fill_in field, with: replacement_value
end
