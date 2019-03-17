num_workers = Rails.env.development? ? 0 : 2
num_threads = Rails.env.development? ? 10 : 5
workers Integer(ENV['WEB_CONCURRENCY'] || num_workers)
threads_count = Integer(ENV['RAILS_MAX_THREADS'] || num_threads)
threads threads_count, threads_count

preload_app!

rackup      DefaultRackup
port        ENV['PORT']     || 3000
environment ENV['RACK_ENV'] || 'development'

on_worker_boot do
  # Valid on Rails up to 4.1 the initializer method of setting `pool` size
  ActiveSupport.on_load(:active_record) do
    config = ActiveRecord::Base.configurations[Rails.env] ||
                Rails.application.config.database_configuration[Rails.env]
    config['pool'] = ENV['RAILS_MAX_THREADS'] || 5
    ActiveRecord::Base.establish_connection(config)
  end
end