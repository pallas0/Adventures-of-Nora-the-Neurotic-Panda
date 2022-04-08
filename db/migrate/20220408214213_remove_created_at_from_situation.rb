class RemoveCreatedAtFromSituation < ActiveRecord::Migration[6.1]
  def change
    remove_column :situations, :created_at, :datetime
  end
end
