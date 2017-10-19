class Movie < ApplicationRecord
  has_many :movie_sessions
  has_many :tickets, through: :movie_sessions
  has_many :halls, through: :movie_sessions
  mount_base64_uploader :image, MovieImageUploader
end
