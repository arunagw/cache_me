$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..", "lib"))

require "cache_me"
require "mocha"
require "rspec"

RSpec.configure do |config|
  config.mock_with(:mocha)
end