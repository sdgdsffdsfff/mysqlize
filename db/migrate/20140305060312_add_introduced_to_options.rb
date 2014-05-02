class AddIntroducedToOptions < ActiveRecord::Migration
  def change
    add_column :options, :introduced_version, :string, :limit => 5
  end
end
