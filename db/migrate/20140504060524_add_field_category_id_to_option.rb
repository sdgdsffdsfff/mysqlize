class AddFieldCategoryIdToOption < ActiveRecord::Migration
  def change
    add_column :options, :category_id, :integer
    add_index :options, :category_id
  end
end
