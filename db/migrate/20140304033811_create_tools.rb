class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string :name
      t.string :description
      t.integer :status

      t.timestamps
    end
  end
end
