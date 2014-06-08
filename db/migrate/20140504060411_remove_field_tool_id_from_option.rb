class RemoveFieldToolIdFromOption < ActiveRecord::Migration
  def change
    remove_column :options, :tool_id, :integer
  end
end
