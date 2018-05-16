class Actor < ApplicationRecord
	has_many :actorMovies
	has_many :movies, through: :actorMovies
end
