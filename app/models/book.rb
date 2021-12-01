class Book < ApplicationRecord
  include Visible
  has_many :reviews, dependent: :destroy
  has_many :book_categories, dependent: :destroy
  has_many :categories, through: :book_categories
  has_one_attached :image

  validates :title, presence: true
  validates :author, presence: true

end
