# Book Controller
class BooksController < ApplicationController
  def new; end

  def create
    @book = Book.new(book_params)
    flash[:notice] = 'Book successfully created!'
    redirect_to new_book_path
    @book.save
  end

  private

  def book_params
    params.require(:book).permit(:title, :isbn, :year)
  end
end
