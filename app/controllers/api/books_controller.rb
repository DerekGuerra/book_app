class Api::BooksController < ApplicationController

  def index
    @books = Book.all
    render 'index.json.jbuilder'
  end

  def show
    the_id = params[:id]
    @book = Book.find_by(id: the_id)
    render 'show.json.jbuilder'
  end
end
