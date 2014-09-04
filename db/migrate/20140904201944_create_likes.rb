class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.belongs_to :user
      t.belongs_to :comment, null: true
      t.belongs_to :link, null: true
      t.timestamps
    end
  end
end
