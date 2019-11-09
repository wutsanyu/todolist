class RemoveTaskColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :tasks, :sequence, :integer
    remove_column :tasks, :status, :integer
  end
end
