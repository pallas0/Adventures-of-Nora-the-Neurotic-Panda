class RemoveCreatedAtFromUserChoices < ActiveRecord::Migration[6.1]
  def change
    remove_column :user_choices, :created_at, :datetime
  end
end
