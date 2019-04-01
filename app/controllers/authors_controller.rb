# AUthor controller
class AuthorsController < ApplicationController
  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)

    if @author.save
      flash[:success] = 'Registration successful!'
      redirect_to new_author_path
    else
      flash[:notice] = 'There were problems while registering the author'
      render 'new'
    end
  end

  private

  def author_params
    params.require(:author).permit(:firstname, :lastname)
  end
end
