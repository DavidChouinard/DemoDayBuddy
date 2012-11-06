class Startup < ActiveRecord::Base
  attr_accessible :logo_path, :name
  validates_presence_of :name

  has_many :founders
end
