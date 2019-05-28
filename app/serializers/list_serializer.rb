class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id, :jokes

  has_many :joke_lists
  has_many :jokes, through: :joke_lists
  belongs_to :user
end
