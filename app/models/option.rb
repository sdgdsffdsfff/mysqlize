class Option < ActiveRecord::Base
  has_many :options_releases
  has_many :releases, through: :options_releases
  validates :name, presence: true, length: {minimum: 2}, uniqueness: true
  validates :long_option, presence: true, length: {minimum: 2}
  belongs_to :category 
end
