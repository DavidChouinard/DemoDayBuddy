class UserPings < ActiveRecord::Base
  attr_accessible :startup_id, :user_id

  belongs_to :startup
  belongs_to :user
end
