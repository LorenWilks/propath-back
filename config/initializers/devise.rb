# frozen_string_literal: true

Devise.setup do |config|
  config.secret_key = 'e864467d79ce897e50fc7a701feaabc00ee6c250a29f5bbb6824b877e34d7724f3e719552f422c9cf6fe7be7b2833eee76b489039f3c567fda9d24e2c69408bb'
  config.mailer_sender = 'noreply@pro-path.com'
  
  require 'devise/orm/active_record'

  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]

  config.password_length = 6..128

  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/

  config.reconfirmable = true

  config.skip_session_storage = [:http_auth]

  config.expire_all_remember_me_on_sign_out = true

  config.reset_password_within = 2.hours

  config.lock_strategy = :failed_attempts
  config.unlock_strategy = :both
  config.maximum_attempts = 10
  config.unlock_in = 1.hour

  config.navigational_formats = ['*/*', :html, :turbo_stream, :json]
  
  config.sign_out_via = :delete

  config.responder.error_status = :unprocessable_entity
  config.responder.redirect_status = :see_other
end
