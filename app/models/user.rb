class User < ApplicationRecord
    has_many :user_choices
    has_many :choices, through: :user_choices

    has_secure_password

    validates :username, presence: true, uniqueness: true

    def recent_choice
        self.user_choices.first.choice
    end

    def user_choice_id
        self.user_choices.first.id
    end

    def upcoming_situation
        self.recent_choice.situations.last
    end

    def upcoming_situation_text
        self.upcoming_situation.story_text
    end

    def upcoming_choices
        self.upcoming_situation.choices.drop(1)
    end

end
