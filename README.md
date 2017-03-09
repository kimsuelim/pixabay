# Pixabay

[![API Testing](https://img.shields.io/badge/API%20Test-RapidAPI-blue.svg)](https://rapidapi.com/package/Pixabay?utm_source=PixabayGithub&utm_medium=button&utm_content=Vender_GitHub)

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
# Default Request parameters
{
  response_group: 'image_details', id: nil, q: nil, lang: 'en',
  image_type: 'all', orientation: 'all', category: nil, min_width: 0,
  min_height: 0, editors_choice: false, safesearch: false,
  order: 'popular', page: 1, per_page: 20, callback: nil, pretty: false
}
```

Example responses

```ruby
{
  "totalHits"=>500,
  "hits"=>[
    {
      "previewHeight"=>150,
      "likes"=>7,
      "favorites"=>7,
      "tags"=>"사람, 사람의, 여성",
      "webformatHeight"=>640,
      "views"=>107,
      "webformatWidth"=>427,
      "previewWidth"=>100,
      "comments"=>2,
      "downloads"=>37,
      "pageURL"=>"https://pixabay.com/ko/%EC%82%AC%EB%9E%8C-%EC%82%AC%EB%9E%8C%EC%9D%98-%EC%97%AC%EC%84%B1-%EC%86%8C%EB%85%80-1166368/",
      "previewURL"=>"https://pixabay.com/static/uploads/photo/2016/01/28/14/59/person-1166368_150.jpg",
      "webformatURL"=>"https://pixabay.com/get/e834b7092bf2093ed95c4518b74d419fe170e4d104b0154491f3c17caeedb7_640.jpg",
      "imageWidth"=>2667,
      "user_id"=>526143,
      "user"=>"Pezibear",
      "type"=>"photo",
      "id"=>1166368,
      "userImageURL"=>"https://pixabay.com/static/uploads/user/2015/01/09/23-10-25-395_250x250.jpg",
      "imageHeight"=>4000
    },
    {
      "previewHeight"=>150,
      ...
    },
    ...
  ],
  "total"=>7765
}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kimsuelim/pixabay. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
