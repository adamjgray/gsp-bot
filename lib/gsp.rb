require 'gsp/config/mongoid'
require 'gsp/setup'
require 'gsp/raids'

require 'gsp/models/server'

module GSP
  def self.logger
    @logger
  end

  def self.logger=(logger)
    @logger = logger
  end
end

GSP.logger = Logger.new(STDOUT).tap { |logger| logger.level = Logger::INFO }
