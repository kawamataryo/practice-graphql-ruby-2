class RenameColumnCompletedAtToCompleted < ActiveRecord::Migration[6.0]
  def change
    rename_column :tasks, :completed_at, :completed
  end
end
