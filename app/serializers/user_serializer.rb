class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :age, :email
  has_many :lists
  
end