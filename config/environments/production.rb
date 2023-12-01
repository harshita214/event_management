require "active_support/core_ext/integer/time"

Rails.application.configure do
  config.action_mailer.default_url_options = { host: 'your-production-host', port: 443 }

  config.enable_reloading = false
  config.eager_load = true

  config.consider_all_requests_local = false
  config.action_controller.perform_caching = true

  config.assets.compile = false


  # ... other configurations ...

  config.force_ssl = true

  config.logger = ActiveSupport::Logger.new(STDOUT)
    .tap { |logger| logger.formatter = ::Logger::Formatter.new }
    .then { |logger| ActiveSupport::TaggedLogging.new(logger) }

  config.log_tags = [ :request_id ]
  config.log_level = ENV.fetch("RAILS_LOG_LEVEL", "info")

  # ... other configurations ...
end
