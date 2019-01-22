class Bear

attr_reader :name, :type, :stock_pile

  def initialize (name, type)
    @name = name
    @type = type
    @stock_pile = []
  end

  def get_name()
    return @name
  end

  def get_type()
    return @type
  end

  def add_fish(fish)
    @stock_pile << fish
  end

  def remove_fish(fish)
    @stock_pile.delete(fish)
  end

  def add_fish_to_bear__remove_from_river(fish)
    for fish in river()
      add_fish(stock_pile)
    end
    stop.clear_river()
  end

end
