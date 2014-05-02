class AddFullVersionToReleases < ActiveRecord::Migration
  def change
    add_column :releases, :full_version, :string, :limit => 65
  end
end
