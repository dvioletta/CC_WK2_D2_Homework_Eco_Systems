class River

  attr_reader :name, :shoal

  def initialize(name)
    @name = name
    @shoal = []
  end

  def get_name()
    return @name
  end

  def add_fish(fish)
    @shoal << fish
  end

  def remove_fish(fish)
    @shoal.delete(fish)
  end

end
