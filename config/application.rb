require_relative "boot"
require "rails/all"
require "rails"
 require "active_model/railtie"
 require "active_job/railtie"
 require "active_record/railtie"
 require "active_storage/engine"
 require "action_controller/railtie"
 require "action_mailer/railtie"
 require "action_mailbox/engine"
 require "action_text/engine"
 require "action_view/railtie"
 require "action_cable/engine"

 require "rails/test_unit/railtie"

Bundler.require(*Rails.groups)

module EventManagement
  class Application < Rails::Application
    config.load_defaults 7.1

    # Remove the following lines, as they are not needed and might cause issues
    config.assets.enabled = true
    # config.assets.version = '1.0'
    # config.autoload_lib(ignore: %w(assets tasks))

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end

Rails.application.configure do
  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

  config.enable_reloading = true
  config.eager_load = false

  config.consider_all_requests_local = true

  # Remove the following line, as it's not needed and might cause issues
  # config.assets.debug = true

  # ... other configurations ...

  config.force_ssl = false

  config.server_timing = true

  config.action_controller.perform_caching = false

  config.cache_store = :null_store

  # ... other configurations ...
end
