require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")

class FishTest < MiniTest::Test

  def setup
    @fish_1 = Fish.new("Arapaima")
    @fish_2 = Fish.new("Candiru")
    @fish_3 = Fish.new("Tambaqui")
  end

  def test_get_name()
  assert_equal("Arapaima", @fish_1.get_name)
end


end
