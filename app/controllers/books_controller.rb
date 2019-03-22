# Book Controller
class BooksController < ApplicationController
  def create
    @book = Book.new(params[:book])

    if @book.save
      flash[:success] = "Book Successfully Created"
    else
      render 'new'
    end
  end

  
end
