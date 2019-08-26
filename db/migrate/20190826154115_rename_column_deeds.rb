class RenameColumnDeeds < ActiveRecord::Migration[5.2]
  def change
    rename_column :deeds, :image_slug, :thumbnail
  end
end
