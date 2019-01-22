require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")
require_relative("../bear.rb")

class BearTest < MiniTest::Test

  def setup

    @bear_1 = Bear.new("Yogi", "Grizzly")
    @river_1 = River.new("Amazon")
    @fish_1 = Fish.new("Arapaima")
    @fish_2 = Fish.new("Candiru")
    @fish_3 = Fish.new("Tambaqui")
  end

  def test_get_name
  assert_equal("Yogi", @bear_1.get_name)
  end

  def test_get_name
  assert_equal("Grizzly", @bear_1.get_name)
  end


end
