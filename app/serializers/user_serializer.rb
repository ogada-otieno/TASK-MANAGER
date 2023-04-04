class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :gender
  has_many :tasks
end
