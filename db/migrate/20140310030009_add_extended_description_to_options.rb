class AddExtendedDescriptionToOptions < ActiveRecord::Migration
  def change
    add_column :options, :extended_description, :string, :limit => 1500
  end
end
