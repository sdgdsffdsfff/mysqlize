class Release < ActiveRecord::Base
  has_many :options_releases
  has_many :options, through: :options_releases
  belongs_to :tool
end
