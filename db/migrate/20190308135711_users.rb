class Users < ActiveRecord::Migration[5.2]
  def change
    create_table :Users do |t|
      t.string :name
    end
  end
end
ß