class Option < ActiveRecord::Base
  belongs_to :tool
  validates :name, presence: true, length: {minimum: 2}
  validates :long_option, presence: true, length: {minimum: 2}
  
end
