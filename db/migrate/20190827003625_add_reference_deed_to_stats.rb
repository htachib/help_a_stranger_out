class AddReferenceDeedToStats < ActiveRecord::Migration[5.2]
  def change
    add_column :stats, :deed_id, :integer
  end
end
