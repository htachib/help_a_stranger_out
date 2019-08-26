class CreateStats < ActiveRecord::Migration[5.2]
  def change
    create_table :stats do |t|
      t.string :stat_type

      t.timestamps
    end
  end
end
