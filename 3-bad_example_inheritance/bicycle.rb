class Bicycle
  attr_reader :size, :tape_colour, :front_shock, :rear_shock

  def initialize(args)
    @size = args[:size]
    @tape_colour = args[:tape_colour]
    @front_shock = args[:front_shock]
    @rear_shock = args[:rear_shock]
  end

  def spares
    {
      chain: '10-speed',
      tire_size: '23',
      tape_colour: tape_colour
    }
  end

end