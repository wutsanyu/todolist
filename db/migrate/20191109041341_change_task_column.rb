class ChangeTaskColumn < ActiveRecord::Migration[6.0]
  def change
    def up
      change_table :task do |t|
        t.change :sequence, :string
        t.change :status, :string
      end
    end
    
    def down
      change_table :task do |t|
        t.change :sequence, :integer
        t.change :status, :integer
      end
    end
  end
end
