module JettyRails

  require "jetty-6.1.9"
  require "servlet-api-2.5-6.1.9"
  require "jetty-util-6.1.9"
  require "jetty-plus-6.1.9"
  module Jetty
    include_package "org.mortbay.jetty"
    include_package "org.mortbay.jetty.servlet"
    include_package "org.mortbay.jetty.nio"
    module Handler
      include_package "org.mortbay.jetty.handler"
      include_package "org.mortbay.jetty.webapp"
    end
    module Thread
      include_package "org.mortbay.thread"
    end
  end

  require "jruby-rack-0.9.2"
  module Rack
    include_package "org.jruby.rack"
    include_package "org.jruby.rack.rails"
    include_package "org.jruby.rack.merb"
  end

end
