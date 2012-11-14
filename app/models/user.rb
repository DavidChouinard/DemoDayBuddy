class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :provider, :uid, :remember_me, :name, :byline, :token, :angellist_url, :twitter_url, :linkedin_url, :avatar
  validates_presence_of :name, :byline

  has_many :user_pings

  def self.find_for_angellist_oauth(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first

    unless user
      user = User.create(name: auth.info.name,
                         provider: auth.provider,
                         uid: auth.uid,
                         token: auth.credentials.token,
                         password: Devise.friendly_token[0,20],
                         email: auth.info.email,
                         byline: auth.info.bio,
                         angellist_url: auth.info.angellist_url,
                         twitter_url: auth.info.twitter_url == "" ? nil : auth.info.twitter_url,
                         linkedin_url: auth.info.linkedin_url == "" ? nil : auth.info.linkedin_url,
                         avatar: auth.info.image,
                        )
    end

    user
  end

end
