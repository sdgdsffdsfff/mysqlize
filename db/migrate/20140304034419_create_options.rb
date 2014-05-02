class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :name
      t.string :long_option
      t.string :short_option
      t.string :option_file
      t.boolean :short_option_can_be_strung
      t.text :description
      t.integer :status
      t.references :tool, index: true

      t.timestamps
    end
  end
end
