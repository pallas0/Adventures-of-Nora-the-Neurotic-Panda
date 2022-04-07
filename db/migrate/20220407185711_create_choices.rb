class CreateChoices < ActiveRecord::Migration[6.1]
  def change
    create_table :choices do |t|
      t.string :choice_text
      t.belongs_to :situation

      t.timestamps
    end
  end
end
