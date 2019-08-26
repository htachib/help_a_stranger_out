class CreateSmiles < ActiveRecord::Migration[5.2]
  def change
    create_table :smiles do |t|
      t.references :user
      t.references :voteable, polymorphic: true

      t.timestamps
    end
  end
end
