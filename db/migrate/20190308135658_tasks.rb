class Tasks < ActiveRecord::Migration[5.2]
  def change
    create_table :Tasks do |t|
      t.string :title
      t.time :estimated_time
      t.time :spent_time
      t.time :excluded_time
    end
  end
end
