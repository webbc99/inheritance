class RoadBike < Bicycle
  attr_reader :tape_colour

  def post_initialize(args)
    @tape_colour = args[:tape_colour]
  end

  def local_spares
    { tape_colour: tape_colour }
  end

  def default_tire_size
    '23'
  end
end