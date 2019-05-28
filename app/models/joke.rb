class Joke < ApplicationRecord
  has_many :joke_lists
  has_many :lists, through: :joke_lists
end
