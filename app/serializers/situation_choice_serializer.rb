class SituationChoiceSerializer < ActiveModel::Serializer
  attributes :id
  has_one :situation
  has_one :choice
end
