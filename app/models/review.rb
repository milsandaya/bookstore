class Review < ApplicationRecord
  include Visible
  belongs_to :book

  validates :name, presence: true
  validates :body, presence: true
end
