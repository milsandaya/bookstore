class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :isbn
      t.string :title
      t.string :publisher
      t.string :author
      t.string :genre
      t.text :summary
      t.date :pubDate
      t.decimal :price

      t.timestamps
    end
  end
end
