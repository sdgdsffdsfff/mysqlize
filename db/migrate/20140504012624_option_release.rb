class OptionRelease < ActiveRecord::Migration
  def change
    create_table :options_releases do |t|
      t.integer :option_id
      t.integer :release_id
      t.timestamps
      t.references :release, index: true
      t.references :option, index: true
    end
  end
end
