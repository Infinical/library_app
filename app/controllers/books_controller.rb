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
    @book = Book.find(params[:id])
  end

  def update; end

  private

  def book_params
    params.require(:book).permit(:title, :isbn, :year)
  end
end
