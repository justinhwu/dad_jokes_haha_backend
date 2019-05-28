class JokeList < ApplicationRecord
  belongs_to :list
  belongs_to :joke
end
