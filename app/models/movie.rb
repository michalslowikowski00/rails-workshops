class Movie < ApplicationRecord
  has_many :ratings

  validates :title, presence: true
  validates :year, numericality: {greater_than: 1900, less_than: 2017}

  def average_rating
    ratings_array = ratings.map do |rating|
      rating.value
    end
    return if ratings_array.empty?
    (ratings_array.sum / ratings_array.count.to_f).round(1)
  end
end
