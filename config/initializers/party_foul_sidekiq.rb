module PartyFoul
  class Sidekiq
    def call(worker, msg, queue)
      begin
        yield
      rescue => error
        PartyFoul::RacklessExceptionHandler.handle(error, {class: worker.class.name, method: queue, params: msg})
        raise error
      end
    end
  end
end

::Sidekiq.configure_server do |config|
  config.server_middleware do |chain|
    chain.add ::PartyFoul::Sidekiq
  end
end