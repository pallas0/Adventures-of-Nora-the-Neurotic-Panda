class CreateUserChoices < ActiveRecord::Migration[6.1]
  def change
    create_table :user_choices do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :choice, null: false, foreign_key: true

    end
  end
end
