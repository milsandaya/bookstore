class CartController < ApplicationController

  def create
    logger.debug("#{params[:id]} added to cart.")

    id = params[:id].to_i
    session[:shopping_cart] << id
    book = Book.find(id)
    flash[:notice] = "✔ #{book.title} added to cart!"
    redirect_to root_path
  end

  def destroy
    id = params[:id].to_i
    session[:shopping_cart].delete(id)
    book = Book.find(id)
    flash[:notice] = "➖ #{book.title} removed from cart."
    redirect_to root_path
  end
end