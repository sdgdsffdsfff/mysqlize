class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.string :major_version, :limit => 10
      t.string :minor_version, :limit =>10
      t.string :build_release, :limit => 45
      t.string :edition, :limit => 45
      t.boolean :is_latest
      t.references :tool, index: true

      t.timestamps
    end
  end
end
