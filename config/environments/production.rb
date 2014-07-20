Rails.application.configure do

  config.cache_classes = true

  config.eager_load = true

  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  # Disable Rails's static asset server (Apache or nginx will already do this).
  config.serve_static_assets = true

  config.assets.js_compressor = :uglifier
  config.assets.compile = true

  # Generate digests for assets URLs.
  config.assets.digest = true

  config.log_level = :info

  config.i18n.fallbacks = true

  config.active_support.deprecation = :notify

  # Disable automatic flushing of the log to improve performance.
  # config.autoflush_log = false

  # Use default logging formatter so that PID and timestamp are not suppressed.
  config.log_formatter = ::Logger::Formatter.new

  # Do not dump schema after migrations.
  config.active_record.dump_schema_after_migration = false
end
