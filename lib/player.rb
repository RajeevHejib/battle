class Player
  attr_reader :name, :hit_points

  DEFAULT_HIT_POINTS = 80

  def initialize(name, hit_points=DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def reduce_points
    @hit_points -= Kernel.rand(0..79)
  end

end
