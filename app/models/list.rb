class List < ApplicationRecord
  has_many :joke_lists
  has_many :jokes, through: :joke_lists
  belongs_to :user
end
