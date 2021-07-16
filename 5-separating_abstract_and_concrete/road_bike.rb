class RoadBike < Bicycle
  attr_reader :tape_colour

  def initialize(args={})
    @tape_colour = args[:tape_colour]
    super(args)
  end

  def default_tire_size
    '23'
  end

  def spares
    {
      chain: '10-speed',
      tire_size: '23',
      tape_colour: tape_colour
    }
  end
end