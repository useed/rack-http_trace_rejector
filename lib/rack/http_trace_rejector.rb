require "rack/http_trace_rejector/version"

# HTTP Trace Rejector - prevents HTTP TRACE requests from reaching the
# app, to assure easier passage of automated security checks.
module Rack
  class HttpTraceRejector
    def initialize(app)
      @app = app
    end

    def call(env)
      req = Rack::Request.new(env)
      return [405, {}, []] if req.request_method == "TRACE"
      @app.call(env)
    end
  end
end
