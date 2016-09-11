class Rating < ApplicationRecord
  belongs_to :movie
  belongs_to :user

  validates :movie_id, presence: true
  validates :value, inclusion: (1..10)
  validates :user_id, presence: true,
      uniqueness: {scope: :movie_id}
end

