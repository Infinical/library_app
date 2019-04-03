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

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      flash[:success] = 'Book was edited successfully!'
      redirect_to new_book_path
    else
      flash[:notice] = 'There were errors while updating your book!'
      render 'edit'
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def index
    @book = Book.all
  end

  private

  def book_params
    params.require(:book).permit(:title, :isbn, :year, :author_id)
  end
end
