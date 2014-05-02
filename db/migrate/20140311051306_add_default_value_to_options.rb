class AddDefaultValueToOptions < ActiveRecord::Migration
  def change
    add_column :options, :default_value, :string, :limit => 20
  end
end
