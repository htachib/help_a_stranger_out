class AddReferenceToDeeds < ActiveRecord::Migration[5.2]
  def change
    add_column :smiles, :deed_id, :integer
  end
end
