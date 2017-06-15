require 'test_helper'

class ConfigTest < Minitest::Spec
  it "create a new pixabay client through initializer" do
    Pixabay.configure do |config|
      config.key = "key"
      config.timeout = 10
    end
    client = Pixabay.new
    Pixabay::Client.must_equal client.class
  end

  it "search photos" do
    client = Pixabay.new
    client.photos(q: "yellow+flower", safesearch: true, page: 1, per_page: 30)
  end

  it "search videos" do
    client = Pixabay.new
    client.videos(q: "yellow+flower", safesearch: true, page: 1, per_page: 30)
  end
end
