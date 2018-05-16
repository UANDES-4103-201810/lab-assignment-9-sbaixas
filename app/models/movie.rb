class Movie < ApplicationRecord
  belongs_to :director
  belongs_to :address
  has_and_belong_to_many :categories
  has_many :actorMovies
  has_many :actors, through :actorMovies
end
