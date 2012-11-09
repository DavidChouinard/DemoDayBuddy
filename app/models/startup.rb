class Startup < ActiveRecord::Base
  attr_accessible :name, :pitch, :email, :pitch_time, :ceo_name, :ceo_email, :ceo_avatar_path, :angellist_id
  validates_presence_of :name, :email, :pitch_time

  has_many :user_pings
end
