class RemoveCreatedAtFromChoices < ActiveRecord::Migration[6.1]
  def change
    remove_column :choices, :created_at, :datetime
  end
end
