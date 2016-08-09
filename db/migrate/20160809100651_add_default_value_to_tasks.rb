class AddDefaultValueToTasks < ActiveRecord::Migration[5.0]

  def change
    change_column :tasks, :utility, :integer, :default => 0
    change_column :tasks, :stable, :boolean, :default => false
  end
end

