class AddBookRefToBookOrder < ActiveRecord::Migration[6.1]
  def change
    add_reference :book_orders, :isbn, null: false, foreign_key: true
  end
end
