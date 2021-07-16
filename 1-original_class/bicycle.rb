class Bicycle
  attr_reader :size, :tape_colour

  def initialize(args)
    @size = args[:size]
    @tape_colour = args[:tape_colour]
  end

  def spares
    {
      chain: '10-speed',
      tire_size: '23',
      tape_colour: tape_colour
    }
  end
end

# Originally, all of our bikes are road bikes. There is no need to create a specialised Road Bike class.