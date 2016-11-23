require "qapi/matchers/version"
require "qapi/matchers/provide_attribute"

module Qapi
  module Matchers
    def provide_attribute(attribute)
      ProvideAttribute.new(attribute)
    end
  end
end

if defined?(RSpec)
  RSpec.configure do |config|
    config.include Qapi::Matchers
  end
end
