class CreateDeeds < ActiveRecord::Migration[5.2]
  def change
    create_table :deeds do |t|
      t.datetime :completed_at

      t.timestamps
    end
  end
end
