# lib/message_responder.rb

module Yorgi
  class MessageResponder
    include Utils

    attr_accessor :journaling
    attr_reader :message, :bot

    def initialize(bot, message)
      @bot = bot
      @message = message
      @journaling = Settings.journaling
    end

    def list
      bot.api.send_message(chat_id: message.chat.id, text: headlines)
    end

    def journal
      Org::Journal.new.add message.text
    end

    def capture
      Org::Capture.new.capture message.text
      list
    end
  end
end
