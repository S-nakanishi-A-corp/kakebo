class BooksController < ApplicationController

  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all
  end
  
  def show
    
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(
      year: params[:year],
      month: params[:month],
      inout: params[:inout],
      category: params[:category],
      amount: params[:amount]
    )
    if @book.save
      flash[:notice] = "家計簿にデータを１件登録しました"
      redirect_to books_index_path
    else
      flash.now[:alert] = "登録に失敗しました"
      render :new
    end
  end

  def edit
    
  end

  def update
    @book.update(
      year: params[:year],
      month: params[:month],
      inout: params[:inout],
      category: params[:category],
      amount: params[:amount]
    )

    if @book.save
      flash[:notice] = "データを１件更新しました"
      redirect_to book_path(@book)
    else
      flash.now[:alert] = "更新に失敗しました"
      render :edit
    end
  end

  def destroy
    @book.destroy
    flash[:notice] = "削除しました"
    redirect_to books_index_path
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end
end
