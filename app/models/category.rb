class Category < ActiveRecord::Base
  belongs_to :tool
  has_many :options
end
