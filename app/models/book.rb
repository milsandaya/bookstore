class Book < ApplicationRecord
  include Visible
  has_many :reviews, dependent: :destroy
  has_many :book_categories, dependent: :destroy
  has_many :categories, through: :book_categories
  has_one_attached :image
  belongs_to :category, optional: true

  validates :title, presence: true
  validates :author, presence: true
  validates :isbn, presence: true
  validates :publisher, presence: true
  validates :genre, presence: true
  validates :pubDate, presence: true
  validates :price, presence: true


end
