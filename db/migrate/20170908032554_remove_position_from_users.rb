class RemovePositionFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :position, :string
  end
end
