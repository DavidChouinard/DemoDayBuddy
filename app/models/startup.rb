class Startup < ActiveRecord::Base
  attr_accessible :name, :pitch, :email, :pitch_time, :ceo_name, :ceo_avatar_path
  validates_presence_of :name, :email, :pitch_time
end
