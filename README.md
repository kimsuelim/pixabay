# Pixabay

## DESCRIPTION:

A Ruby API for [https://pixabay.com](https://pixabay.com)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pixabay-api', require: 'pixabay'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pixabay-api

## Usage

### Configure pixabay through initializer

If you want to configure pixabay through an initializer (e.g. `config/initializers/pixabay.rb`), do the following:

```ruby
Pixabay.configure do |config|
  config.api_key = 'API_KEY'
  config.timeout = 10
end
```

Using `Pixabay.new` to get the client, use `pixabay.client`:

```ruby
client = Pixabay.new
client.photos(lang: 'ko', safesearch: true, page: 1, per_page: 30)
```

Avalable Request parameters, see [https://pixabay.com/api/docs/](https://pixabay.com/api/docs/)

```ruby
options = {
  response_group: 'image_details', id: nil, q: nil, lang: 'en',
  image_type: 'all', orientation: 'all', category: nil, min_width: 0,
  min_height: 0, editors_choice: false, safesearch: false,
  order: 'popular', page: 1, per_page: 20, callback: nil, pretty: false
}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/pixabay. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

