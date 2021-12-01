class CreateBookOrder < ActiveRecord::Migration[6.1]
  def change
    create_table :book_orders do |t|
      t.numeric :quantity
      t.decimal :price

      t.timestamps
    end
  end
end
