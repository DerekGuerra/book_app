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

  def create
    @book = Book.new(title: params[:input_title], author: params[:input_author], year_published: params[:input_year_published], genre: params[:input_genre])
    p @book
    @book.save
    render 'show.json.jbuilder'
  end

  def update
    #find book
    the_id = params[:id]
    @book = Book.find_by(id: the_id)
    #update book
    @book.title = params[:title]
    @book.author = params[:author]
    @book.genre = params[:genre]
    @book.year_published = params[:year_published]
    p @book
    render 'show.json.jbuilder'
    @book.save
  end

  def destroy
    #find book
    the_id = params[:id]
    @book = Book.find_by(id: the_id)
    #destroy book
    @book.destroy
    render 'destroy.json.jbuilder'
  end
end
