# Rack::HttpTraceRejector

Automated security audits getting you down? Pesky "you need to block HTTP TRACE" requests showing up in tinfoil, or even worse, PCI audits, and because you're on Heroku without an NGinx configuration in sight, you don't know how to respond?

`rack-http_trace_rejector` is here to help. While this is a fairly simple patch to make on your own (check the source), bundling it up with a few tests was a big benefit to our team across 2 projects, and I figured the same might be true elsewhere. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rack-http_trace_rejector'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rack-http_trace_rejector

## Usage

```
module YourApp
  class Application < Rails::Application

    # Rails 3/4
    config.middleware.insert_before 0, "Rack::HttpTraceRejector"

    # Rails 5
    config.middleware.insert_before 0, Rack::HttpTraceRejector
  end
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rack-http_trace_rejector. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

