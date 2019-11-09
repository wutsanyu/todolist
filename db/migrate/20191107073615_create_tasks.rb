class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.string :sequence
      t.string :status
      t.text :description
      t.string :title
      t.integer :user_id

      t.timestamps
    end
  end
end
