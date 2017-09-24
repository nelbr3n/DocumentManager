class ChangeDescriptionToTitle < ActiveRecord::Migration[5.0]
  def up
    rename_column :statuses, :description, :title
  end

  def down
    rename_column :statuses, :title, :description
  end
end
