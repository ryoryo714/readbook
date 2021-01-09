class BooksController < ApplicationController

  before_action :move_to_index, except: [:index]

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)
    if  @book.save
      redirect_to root_path
    else
      render :new
    end  
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
  end

  private

  def book_params
    params.require(:book).permit(:title, :image, :read_book)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end
