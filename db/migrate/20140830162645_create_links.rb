class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.belongs_to :user
      t.string :name
      t.text :description
      t.integer :counter

      t.timestamps
    end
  end
end
