class Article < ApplicationRecord
  belongs_to :category

  validates :title, :description, :author, :email, :price, presence: true
end
