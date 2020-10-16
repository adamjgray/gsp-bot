require 'dotenv/load'
Bundler.require(:default, ENV['GSP_ENV'])

require 'gsp'

GSP.logger.info "Starting up..."
bot = Discordrb::Bot.new(:token => ENV['DISCORD_BOT_TOKEN'])

bot.include! Setup
bot.include! Raids

begin
  bot.run
rescue Interrupt => e
  GSP.logger.info "Stopping ... #{e.message}"
  bot.stop
rescue SignalException => e
  GSP.logger.info "Stopping ... #{e.message}"
  bot.stop
rescue Exception => e
  GSP.logger.info "Stopping ... #{e.message}"
  bot.stop
end
