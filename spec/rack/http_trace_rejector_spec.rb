require "spec_helper"
require "mock_app"
require "rack/mock"
require "byebug"

RSpec.describe Rack::HttpTraceRejector do
  let(:app) { MockApp.new }
  let(:request) { Rack::MockRequest.new(subject) }
  subject { Rack::HttpTraceRejector.new(app) }

  context "when called with HTTP TRACE" do
    it "should reject the request with a 405 status" do
      response = request.request("TRACE", "/some/path")
      expect(response.status).to eq 405
    end
  end

  context "when not called with HTTP trace" do
   %w(OPTIONS HEAD CONNECT GET POST SEARCH PUT DELETE PATCH).each do |method|
      it "should allow #{method} requests to pass through" do
        response = request.request(method, "/some/path", {})
        expect(response.status).to eq 200
      end
    end
  end
end
