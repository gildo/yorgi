# frozen_string_literal: true

source "https://rubygems.org"

# Specify your gem's dependencies in yorgi.gemspec
gemspec

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

gem "rake"
gem "org-ruby", github: "wallyqs/org-ruby"
gem "telegram-bot-ruby", "~> 0.15.0"
gem "i18n", "~> 1.8"
gem "rails-i18n", "~> 6.0"
gem "zeitwerk", "~> 2.4"
gem "filewatcher", "~> 1.1"
gem "config", "~> 3.1"

group :test, :development do
  gem "byebug"
end
