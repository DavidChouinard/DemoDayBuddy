# This intercepts ActionMailer emails in development and redirects them to
# another email

class DevelopmentMailInterceptor
  def self.delivering_email(message)
    message.subject = "[#{message.to}] #{message.subject}"
    message.to = "david@davidchouinard.com"
    message.content_type = "text/html"
  end
end

ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?
