require 'rspec'


RSpec.configure do |c|
  c.extend  RSpec::Assumptions::ClassExtensions
  c.include RSpec::Assumptions::InstanceExtensions
end
