class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest,
   :upcoming_situation_text, :upcoming_situation, :upcoming_choices,
   :user_choice_id
end
