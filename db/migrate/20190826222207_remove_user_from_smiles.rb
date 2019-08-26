class RemoveUserFromSmiles < ActiveRecord::Migration[5.2]
  def change
    change_table :smiles do |s|
      s.remove_references :user
    end
  end
end
