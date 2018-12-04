require "vitepay_ruby/version"
require "digest/sha1"
require 'net/http'
require "uri"
require "vitepay_ruby/configuration"

# Global class
require "vitepay_ruby/client"


module VitepayApi
 
  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= VitepayApi::Configuration.new
  end

  def self.reset
    @configuration = VitepayApi::Configuration.new
  end

  def self.configure
    yield(configuration)
  end

end
