require 'rspec/core'
# require 'autotest/rspec2'
require 'rails3_artifactor'
require 'rails3_artifactor/rspec'
require 'code-spec'
require 'fixtures'

RSpec.configure do |config|
  config.mock_with :mocha
end
