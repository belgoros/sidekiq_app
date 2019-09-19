require 'sidekiq'

sidekiq_config = { url: ENV['REDIS_PROVIDER'] }

Sidekiq.configure_server do |config|
  config.redis = sidekiq_config
  config.log_formatter = Sidekiq::Logger::Formatters::JSON.new

  # Touch a file so we know Sidekiq worker has started.
  # Useful for health checks
  config.on(:startup) do
    FileUtils.touch(Rails.root.join("tmp", "pids", "sidekiq_started"))
  end
  # Delete the touched file so we know Sidekiq worker has stopped.
  # Useful for health checks
  config.on(:shutdown) do
    FileUtils.rm(Rails.root.join("tmp", "pids", "sidekiq_started"))
  end
end

Sidekiq.configure_client do |config|
  config.redis = sidekiq_config
end
