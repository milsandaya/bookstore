class Review < ApplicationRecord
  include Visible
  belongs_to :book
end
