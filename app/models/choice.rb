class Choice < ApplicationRecord
    has_many :situation_choices
    has_many :situations, through: :situation_choices
end
