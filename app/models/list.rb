class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :books, through: :bookmarks
  has_one_attached :photo

  validates :name, presence: true
  validates :name, uniqueness: true
end
