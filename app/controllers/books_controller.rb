# Book Controller
class BooksController < ApplicationController
  def new; end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to new_book_path
    flash[:notice] = 'Book successfully created!'
  end
  def edit
    
  end

  private

  def book_params
    params.require(:book).permit(:title, :isbn, :year)
  end
end
