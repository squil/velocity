class AddStateToTasks < ActiveRecord::Migration
  def self.up
    add_column :tasks, :state, :string, :limit => 30
  end

  def self.down
    remove_column :tasks, :state
  end
end

