class AddUnsubscribeKeyToDocument < ActiveRecord::Migration[5.0]
  def change
    add_column :documents, :puesto, :string
  end
end
