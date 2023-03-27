class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :book

  validates :book_id, uniqueness: { scope: :list_id }
  validates :comment, length: { minimum: 6 }
end
