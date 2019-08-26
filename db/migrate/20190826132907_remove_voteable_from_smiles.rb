class RemoveVoteableFromSmiles < ActiveRecord::Migration[5.2]
  def change
    change_table :smiles do |s|
      s.remove_references :voteable
    end
  end
end
