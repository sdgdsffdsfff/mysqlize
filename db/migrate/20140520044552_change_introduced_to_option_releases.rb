class ChangeIntroducedToOptionReleases < ActiveRecord::Migration
  def change
    change_column :option_releases, :introduced, :boolean
  end
end
