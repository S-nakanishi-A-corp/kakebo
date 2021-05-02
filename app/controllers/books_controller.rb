class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  
  def show
    @book = Book.find_by(id: params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(year: params[:year], month: params[:month], inout: params[:inout], category: params[:category], amount: params[:amount])
    @book.save
    redirect_to "/books/index"
  end
end
