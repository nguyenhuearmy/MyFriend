class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :name
      t.date :birthday
      t.string :email
      t.string :phone
      t.text :feeling

      t.timestamps null: false
    end
  end
end
