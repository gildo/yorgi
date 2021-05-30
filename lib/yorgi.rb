#!/usr/bin/env ruby

require "filewatcher"
require "yaml"
require "org-ruby"
require "telegram/bot"

require "zeitwerk"
loader = Zeitwerk::Loader.for_gem
loader.enable_reloading
loader.push_dir("#{__dir__}/")
loader.setup # ready!

filewatcher = Filewatcher.new("lib/")
Thread.new(filewatcher) do |fw|
  fw.watch do |_|
    puts "Reloading.."
    loader.reload
  end
end

module Yorgi
end
