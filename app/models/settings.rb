class Settings < ActiveRecord::Base
  attr_accessible :assets
  serialize :assets, Array
end
