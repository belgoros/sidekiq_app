sidekiq_config = { url: ENV['JOB_WORKER_URL'] }

Sidekiq.configure_server do |config|
  config.redis = sidekiq_config
  config.log_formatter = Sidekiq::Logger::Formatters::JSON.new
end

Sidekiq.configure_client do |config|
  config.redis = sidekiq_config
end
