class AddSequenceToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :sequence, :integer
  end
end
