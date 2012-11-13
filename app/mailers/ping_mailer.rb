class PingMailer < ActionMailer::Base
  default from: "\"TechStars Demo Day\" <demoday-noreply@sendgrid.me>"

  def ping_startup(startup, user)
    @startup = startup
    @user = user

    @row_count = 3
    ['angellist_url', 'linkedin_url', 'twitter_url'].each do |field|
      if field
        @row_count += 1
      end
    end

    mail(:to => startup.email, :subject => "#{user.name} wants to connect")
  end

  def confirmation_email(startup, user)
    @startup = startup
    @user = user

    mail(:to => user.email, :subject => "Confirmation: request sent to #{startup.name}")
  end
end
