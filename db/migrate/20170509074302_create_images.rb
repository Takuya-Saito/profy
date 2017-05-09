class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :imageable_id
      t.string :imageable_type
      t.string :title
      t.text :url

      t.timestamps null: false
    end
  end
end
