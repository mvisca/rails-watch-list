class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list #TODO: Deleted dependent destroy... affects something?

  validates :comment, length: { minimum: 6 }
  validates :list_id, uniqueness: { scope: :movie_id }
end
