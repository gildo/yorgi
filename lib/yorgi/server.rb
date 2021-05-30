module Yorgi
  class Server
    def initialize; end

    def client
      @client ||= Telegram::Bot::Client.new(Settings.token)
    end

    def run
      client.run do |bot|
        bot.listen do |message|
          message_handler(bot, message)
        end
      end
    end

    def message_handler(bot, message)
      MessageRouter.new(bot, message).route
    end
  end
end
