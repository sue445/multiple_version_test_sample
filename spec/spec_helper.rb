$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'multiple_version_test_sample'

def rails4?
  Rails::VERSION::STRING.to_i == 4
end

if rails4?
  require "activerecord-turntable"
end
