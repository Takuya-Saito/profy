class RemoveColumnFromPhotos < ActiveRecord::Migration
  def change
    remove_column :photos, :name, :string
  end
end
