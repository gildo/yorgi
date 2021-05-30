# lib/message_router.rb

module Yorgi
  class MessageRouter
    include Utils
    attr_reader :bot, :message, :responder

    def initialize(bot, message)
      @bot = bot
      @message = message
      @responder = MessageResponder.new(bot, message)
    end

    def route
      case message.text
      when "/list"
        @responder.list
      when "/j"
        Settings.journaling = !Settings.journaling
        bot.api.send_message(chat_id: message.chat.id,
                             text: "journaling: #{Settings.journaling}")
      else
        if Settings.journaling
          @responder.journal
        else
          @responder.capture
        end
      end
    end
  end
end
