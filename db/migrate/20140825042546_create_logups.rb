class CreateLogups < ActiveRecord::Migration
  def change
    create_table :logups do |t|
      t.string :fullname
      t.string :email

      t.timestamps
    end
  end
end
