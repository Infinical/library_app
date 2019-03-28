When('I am on the Show Book Page') do
  book = Book.find_by(title: 'React')
  visit(book_path(book))
end
