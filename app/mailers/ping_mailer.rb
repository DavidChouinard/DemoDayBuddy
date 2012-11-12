class PingMailer < ActionMailer::Base
  default from: "\"TechStars Demo Day\" <demoday-noreply@sendgrid.me>"

  def ping_startup(startup)
    @startup = startup
    mail(:to => startup.email, :subject => "Somebody is interested in talking to you")
  end
end
