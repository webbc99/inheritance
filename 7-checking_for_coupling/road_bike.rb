class RoadBike < Bicycle
  attr_reader :tape_colour

  def initialize(args)
    @tape_colour = args[:tape_colour]
    super(args)
  end

  def spares
    super.merge({tape_colour: tape_colour})
  end

  def default_tire_size
    '23'
  end
end