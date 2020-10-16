Mongoid.configure do |config|
  config.clients.default = {
    hosts: ['127.0.0.1:27017'],
    database: 'gsp-dev',
  }

  config.log_level = :info
  config.app_name = "gsp"
end

Mongo::Logger.logger.level = Logger::INFO
