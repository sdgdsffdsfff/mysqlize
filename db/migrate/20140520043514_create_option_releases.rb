class CreateOptionReleases < ActiveRecord::Migration
  def change
    create_table :option_releases do |t|
      t.references :option, index: true
      t.references :release, index: true
      t.boolean :deprecated
      t.datetime :introduced

      t.timestamps
    end
  end
end
