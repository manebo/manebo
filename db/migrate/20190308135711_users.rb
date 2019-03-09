class Users < ActiveRecord::Migration[5.2]
  def change
    create_table :Users do |t|
      t.string :name :null => false
      t.string :email :null => false
      t.string :encrypted=password :null => false
    end
  end
end