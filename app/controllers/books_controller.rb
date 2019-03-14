class BooksController < ApplicationController
    def  new
        
    end

    def create
        @book = Book.new(book_params)

        @book.save 
        redirect_to @book
    end

    def show
        @book = Book.find(params[:id])
    end

    def index
        @books = Book.all
    end

    private
    def book_params
        params.require(:book).permit(:book_name,:book_ISBN,:book_publisher,:book_year)
    end
    
end
