module Yorgi::Org
  class Capture
    include Yorgi::Utils
    attr_reader :capture_file

    def initialize
      # TODO: set different capture file
      @capture_file = Settings.org_file
    end

    def capture(text)
      write capture_file, "* #{text}"
    end
  end
end
