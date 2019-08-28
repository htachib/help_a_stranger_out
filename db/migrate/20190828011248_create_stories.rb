class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.text :body
      t.references :deed, foreign_key: true

      t.timestamps
    end
  end
end
