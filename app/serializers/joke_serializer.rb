class JokeSerializer < ActiveModel::Serializer
  attributes :id, :phrase
  has_many :joke_lists
  has_many :lists, through: :joke_lists
end
