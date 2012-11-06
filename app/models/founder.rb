class Founder < ActiveRecord::Base
  attr_accessible :avatar_path, :name, :startup_id, :startup
  validates_presence_of :name

  belongs_to :startup
end
