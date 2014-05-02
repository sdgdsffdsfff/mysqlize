class ChangeDescriptionTypeInTools < ActiveRecord::Migration
  def change
    change_column :tools, :description, :text
  end
end
