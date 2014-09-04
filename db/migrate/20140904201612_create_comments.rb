class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.datetime :when
      t.belongs_to :user
      t.belongs_to :link

      t.timestamps
    end
  end
end
