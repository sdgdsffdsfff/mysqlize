class OptionRelease < ActiveRecord::Base
  belongs_to :option
  belongs_to :release
end
