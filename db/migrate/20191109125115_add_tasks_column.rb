class AddTasksColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :sequence, :integer
    add_column :tasks, :status, :integer
  end
end
