class Book < ApplicationRecord
  has_many :lists
  has_many :bookmarks
  has_one_attached :photo

  validates :title, :overview, uniqueness: true
  validates :title, :overview, presence: true
end
