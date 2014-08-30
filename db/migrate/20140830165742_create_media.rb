class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.belongs_to :user
      t.string :path
      t.integer :size
      t.string :type
      t.float :price
      t.integer :counter

      t.timestamps
    end
    create_table :links_music_types, id: false do |t|
      t.belongs_to :link
      t.belongs_to :media
    end
  end
end
