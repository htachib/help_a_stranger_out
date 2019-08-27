class AddColumnsToStats < ActiveRecord::Migration[5.2]
  def change
    add_column :stats, :direction, :boolean
  end
end
