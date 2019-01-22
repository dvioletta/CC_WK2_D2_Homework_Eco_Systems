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

  def test_get_type
  assert_equal("Grizzly", @bear_1.get_type)
  end

  def test_add_fish
    @bear_1.add_fish(@fish_1)
    assert_equal(1, @bear_1.stock_pile.count)
  end

  def test_remove_fish
    @bear_1.remove_fish(@fish_1)
    assert_equal(0, @bear_1.stock_pile.count)
  end


  def test_add_fish_to_bear__remove_from_river()
  @bear_1.add_fish(@fish_3)
  @river_1 = River.new("Amazon")
  @river_1.add_fish(@fish_2)
  @river_1.add_fish(@fish_2)
  @bear_1.remove_fish(@river_1)
  assert_equal(3, @bear_1.shock_pile.count())
  end

end
