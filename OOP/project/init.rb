APP_ROOT = File.dirname(__FILE__)

# puts require "#{APP_ROOT}/lib/guide"
# puts require File.join(APP_ROOT, 'lib', 'guide')


$:.unshift(File.join(APP_ROOT, 'lib'))
require 'guide'

obj = Guide.new('restaurants.txt')
obj.launch!