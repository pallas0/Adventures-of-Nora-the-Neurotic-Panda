class RemoveUpdatedAtFromSituations < ActiveRecord::Migration[6.1]
  def change
    remove_column :situations, :updated_at, :datetime
  end
end
