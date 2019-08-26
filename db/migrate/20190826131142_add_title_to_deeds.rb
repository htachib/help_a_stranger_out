class AddTitleToDeeds < ActiveRecord::Migration[5.2]
  def change
    add_column :deeds, :image_slug, :string
    add_column :deeds, :description, :text
    add_column :deeds, :title, :string
  end
end
