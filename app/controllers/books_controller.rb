# Book Controller
class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      flash[:success] = 'Book successfully created!'
      redirect_to new_book_path
    else
      flash[:notice] = 'There were problems while creating the book'
      render 'new'
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :isbn, :year)
  end
end
