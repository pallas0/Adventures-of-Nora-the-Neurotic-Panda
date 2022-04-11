class CreateSituationChoices < ActiveRecord::Migration[6.1]
  def change
    create_table :situation_choices do |t|
      t.belongs_to :situation, null: false, foreign_key: true
      t.belongs_to :choice, null: false, foreign_key: true
      t.boolean :outcome

    end
  end
end
