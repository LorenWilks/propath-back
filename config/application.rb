require_relative "boot"

require "rails"

# Only load the railties we need
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "action_mailbox/engine"
require "action_text/engine"
require "rails/test_unit/railtie"

Bundler.require(*Rails.groups)

module Backend
  class Application < Rails::Application
    config.load_defaults 7.0

    # Use the API-only configuration
    config.api_only = true
  end
end
