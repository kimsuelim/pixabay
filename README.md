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
  config.key = "Your API key"
  config.timeout = 10
end
```

### Search Images 

```ruby
require 'pixabay'
client = Pixabay.new
res = client.photos(q: "yellow flower", safesearch: true, page: 1, per_page: 30)
res["total"] # 15526
res["totalHits"] # 500
res["hits"] # pictures
```

This will find 30 yellow flower pictures.
If you want high resolution pictures, see (https://pixabay.com/api/docs/?request_full_access)

Avalable Request parameters see [https://pixabay.com/api/docs/](https://pixabay.com/api/docs/)

```ruby
# Default Request parameters
{
  q: nil, lang: "en", id: nil,
  response_group: "image_details", image_type: "all", orientation: "all", category: nil,
  min_width: 0, min_height: 0, editors_choice: false, safesearch: false,
  order: "popular", page: 1, per_page: 20, callback: nil, pretty: false
}
```

Example responses

```ruby
{
  "totalHits"=>500,
  "hits"=>[
    {
      "previewHeight"=>93,
      "likes"=>87,
      "favorites"=>61,
      "tags"=>"blossom, bloom, flower",
      "webformatHeight"=>400,
      "views"=>28270,
      "webformatWidth"=>640,
      "previewWidth"=>150,
      "comments"=>3,
      "downloads"=>10382,
      "pageURL"=>"https://pixabay.com/en/blossom-bloom-flower-yellow-close-195897/",
      "previewURL"=>"https://cdn.pixabay.com/photo/2013/10/15/09/20/flower-195897_150.jpg",
      "webformatURL"=>"https://pixabay.com/get/e83cb40721f31c2ad65a5854e74b4f94e471e6c818b5184690f0c97faeea_640.jpg",
      "imageWidth"=>4000,
      "user_id"=>48777,
      "user"=>"Josch13", "type"=>"photo",
      "id"=>195897,
      "userImageURL"=>"https://cdn.pixabay.com/user/2013/11/05/02-10-23-764_250x250.jpg",
      "imageHeight"=>2501
    },
    {
      "previewHeight"=>99,
      ...
    },
    ...
  ],
  "total"=>15526
}
```

### Search Videos 

```ruby
require 'pixabay'
client = Pixabay.new
res = client.videos(q: "yellow flower", safesearch: true, page: 1, per_page: 30)
res["total"] # 5593
res["totalHits"] # 500
res["hits"] # videos
```

This will find 30 yellow flower videos.

Avalable Request parameters see [https://pixabay.com/api/docs/](https://pixabay.com/api/docs/)

```ruby
# Default Request parameters
{
  q: nil, lang: "en", id: nil,
  video_type: "all", category: nil,
  min_width: 0, min_height: 0, editors_choice: false, safesearch: false,
  order: "popular", page: 1, per_page: 20, callback: nil, pretty: false
}
```

Example responses

```ruby
{
  "totalHits"=>500,
  "hits"=>[
    {
      "picture_id"=>"583475757",
      "videos"=>{
        "large"=>{"url"=>"", "width"=>0, "size"=>0, "height"=>0},
        "small"=>{"url"=>"https://player.vimeo.com/external/176277723.sd.mp4?s=a9a3531634d2c42b6e62d10bea241133267589aa&profile_id=165", "width"=>960, "size"=>17298015, "height"=>540},
        "medium"=>{"url"=>"https://player.vimeo.com/external/176277723.hd.mp4?s=9eb4ad96f20973877ff433d12751cd792c5a905d&profile_id=174", "width"=>1280, "size"=>27090188, "height"=>720},
        "tiny"=>{"url"=>"https://player.vimeo.com/external/176277723.sd.mp4?s=a9a3531634d2c42b6e62d10bea241133267589aa&profile_id=164", "width"=>640, "size"=>6193727, "height"=>360}
      },
      "tags"=>"beach, holiday, greece",
      "downloads"=>176636,
      "likes"=>166,
      "favorites"=>120,
      "duration"=>80,
      "id"=>3998,
      "user_id"=>2978946,
      "views"=>40781,
      "comments"=>63,
      "userImageURL"=>"https://cdn.pixabay.com/user/2016/07/25/18-27-26-130_250x250.png",
      "pageURL"=>"https://pixabay.com/videos/id-3998/",
      "type"=>"film", "user"=>"Rc-Aero-Tech"
    },
    {
      "picture_id"=>"583475757",
      ...
    },
    ...
  ],
  "total"=>5593
}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kimsuelim/pixabay. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
