class MovieSession < ApplicationRecord
  has_many :tickets
  belongs_to :hall
  belongs_to :movie
end
