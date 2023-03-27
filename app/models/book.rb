class Book < ApplicationRecord
  has_many :lists
  has_many :bookmarks
  has_one_attached :photo

  # validates :title, :description, uniqueness: true
  # validates :title, :description, presence: true
end
