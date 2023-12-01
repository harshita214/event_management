require "active_support/core_ext/integer/time"

Rails.application.configure do
  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

  config.enable_reloading = true
  config.eager_load = false

  config.consider_all_requests_local = true

 
  config.assets.enabled = true
  config.x.assets.debug = true


  # ... other configurations ...

  config.force_ssl = false

  config.server_timing = true

  config.action_controller.perform_caching = false

  config.cache_store = :null_store

  # ... other configurations ...
end
