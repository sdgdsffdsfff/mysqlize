class AddRemovedToOptions < ActiveRecord::Migration
  def change
    add_column :options, :removed_version, :string, :limit => 5
  end
end
