class BooksController < ApplicationController
  # http_basic_authenticate_with name: "admin", password: "password", except: %i[index show]
  before_action :authenticate_user!, except: [:show, :index]

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user
    if @book.save
      redirect_to @book
    else
      render :new
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to @book
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    redirect_to root_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :price, :status)
  end
end
