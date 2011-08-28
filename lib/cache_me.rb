require 'active_support'
require 'active_record'
require "cache_me/version"
require "cache_me/cacheable"

module CacheMe
  def self.included(base)
    base.send :extend, ClassMethods
  end

  module ClassMethods
    include Cacheable

    def cache_me
      send :include, InstanceMethods
    end
  end

  module InstanceMethods
    include Cacheable
  end
end

ActiveRecord::Base.send :include, CacheMe