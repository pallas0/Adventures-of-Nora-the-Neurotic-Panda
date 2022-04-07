class UserChoiceSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :choice
end
