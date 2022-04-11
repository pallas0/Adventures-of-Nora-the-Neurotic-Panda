class User < ApplicationRecord
    has_many :user_choices
    has_many :choices, through: :user_choices
end
