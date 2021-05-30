# lib/utils.rb

module Yorgi
  module Utils
    def write(file, text)
      f = File.open(file, "a")
      f.puts(text)
    ensure
      f.close
    end

    def headlines
      filepath = File.join Settings.org_file
      file = File.read filepath
      parser = Orgmode::Parser.new(file)
      parser.headlines.map(&:to_s).join("\n")
    end
  end
end
