class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :user_id, null: false
      t.string :title, null: false
      t.text :description
      t.text :comment
      t.time :estimated_time
      t.integer :spent_secs, default: 0
      t.time :exluded_time
      t.integer :timer_status, null: false, default: 0

      t.timestamps
    end

    add_index :tasks, :id
  end
end
