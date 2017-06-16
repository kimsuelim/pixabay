require 'test_helper'

class ConfigTest < Minitest::Spec
  before do
    Pixabay.configure do |config|
      config.key = "1792764-8d5ef6920d5ab12a2e0c421f5"
      config.timeout = 10
    end

    @client = Pixabay.new
  end

  it "create a new pixabay client through initializer" do
    @client.instance_variable_get(:@key).must_equal "1792764-8d5ef6920d5ab12a2e0c421f5"
    @client.instance_variable_get(:@timeout).must_equal 10
  end

  it "search photos" do
    res = @client.photos(q: "yellow+flower", safesearch: true, page: 1, per_page: 30)
    res["hits"].must_be_instance_of Array
    res["total"].wont_be_nil
    res["totalHits"].wont_be_nil
  end

  it "search videos" do
    res = @client.videos(q: "yellow+flower", safesearch: true, page: 1, per_page: 30)
    res["hits"].must_be_instance_of Array
    res["total"].wont_be_nil
    res["totalHits"].wont_be_nil
  end
end
