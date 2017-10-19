class Hall < ApplicationRecord
  has_many :movie_sessions
  has_many :movies, through: :movie_sessions
  has_many :tickets, through: :movie_sessions
end
