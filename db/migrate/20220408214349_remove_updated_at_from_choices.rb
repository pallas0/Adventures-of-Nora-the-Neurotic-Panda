class RemoveUpdatedAtFromChoices < ActiveRecord::Migration[6.1]
  def change
    remove_column :choices, :updated_at, :datetime
  end
end
