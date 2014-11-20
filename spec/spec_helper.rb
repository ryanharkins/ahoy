require 'bundler/setup'
require 'rails/version'

RSpec.configure do |config|
  config.expect_with(:rspec) { |c| c.syntax = :expect }
  config.order = :random
end

require 'ahoy_matey'
