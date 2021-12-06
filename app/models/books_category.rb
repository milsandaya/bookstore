class BooksCategory < ApplicationRecord
  belongs_to :book
  belongs_to :category

  self.primary_key =[:book_id, :category_id]
end
