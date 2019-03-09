class Tasks < ActiveRecord::Migration[5.2]
  def change
    create_table :Tasks do |t|
      t.string :title :null => false
      t.time :estimated_time
      t.time :spent_time :default => 0
      t.time :excluded_time
      t.text :description
      t.text :comment
      t.integer :user_id :null => false
      t.integer :timer_status :null => false, :default => 0
      t.timestamps :created_at
      t.timestamps :last_modified_at
    end
  end
end
