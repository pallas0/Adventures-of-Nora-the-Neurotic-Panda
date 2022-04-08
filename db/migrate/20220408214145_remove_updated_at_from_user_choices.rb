class RemoveUpdatedAtFromUserChoices < ActiveRecord::Migration[6.1]
  def change
    remove_column :user_choices, :updated_at, :datetime
  end
end
