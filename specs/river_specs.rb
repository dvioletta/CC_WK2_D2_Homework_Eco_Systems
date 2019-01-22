require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")
require_relative("../river.rb")

class RiverTest < MiniTest::Test

  def setup

    @river_1 = River.new("Amazon")
    @fish_1 = Fish.new("Arapaima")
    @fish_2 = Fish.new("Candiru")
    @fish_3 = Fish.new("Tambaqui")

  end

  def test_get_name
  assert_equal("Amazon", @river_1.get_name)
  end

  def test_add_fish
    @river_1.add_fish(@fish_1)
    assert_equal(1, @river_1.shoal.count) 
  end
end
