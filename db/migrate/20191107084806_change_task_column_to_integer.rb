class ChangeTaskColumnToInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :tasks, :sequence, 'integer USING CAST("sequence" AS integer)' 
    change_column :tasks, :status, 'integer USING CAST("status" AS integer)'
  end
end
