class AddIndexToStimsName < ActiveRecord::Migration[5.1]
  def change
    add_index :stims, :name, unique: true
  end
end
