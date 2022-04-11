class Situation < ApplicationRecord
    has_many :situation_choices
    has_many :choices, through: :situation_choices
end
