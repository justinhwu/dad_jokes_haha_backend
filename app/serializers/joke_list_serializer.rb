class JokeListSerializer < ActiveModel::Serializer
  attributes :id, :list_id, :joke_id
  belongs_to :list
  belongs_to :joke
end
