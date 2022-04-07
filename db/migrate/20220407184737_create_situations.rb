class CreateSituations < ActiveRecord::Migration[6.1]
  def change
    create_table :situations do |t|
      t.string :story_text

      t.timestamps
    end
  end
end
