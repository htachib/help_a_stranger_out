class DropVoteableTypeFromSmiles < ActiveRecord::Migration[5.2]
  def change
    remove_column :smiles, :voteable_type
  end
end
