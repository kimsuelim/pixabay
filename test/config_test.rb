require 'test_helper'

class ConfigTest < Minitest::Spec
  it "create a new pixabay client through initializer" do
    Pixabay.configure do |config|
      config.key = "a"
      config.timeout = 10
    end
    b = Pixabay.new
    Pixabay::Client.must_equal b.class
  end

  it "get photos" do
    b = Pixabay.new
    b.photos(lang: "ko", safesearch: true, page: 1, per_page: 30)
  end
end
