class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name
      t.text :content
      t.belongs_to :sender, :class_name => "User"
      t.belongs_to :receiver, :class_name => "User"

      t.timestamps
    end
  end
end
