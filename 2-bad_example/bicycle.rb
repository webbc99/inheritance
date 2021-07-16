class Bicycle
  attr_reader :size, :tape_colour, :front_shock, :rear_shock, :style

  def initialize(args)
    @size = args[:size]
    @tape_colour = args[:tape_colour]
    @front_shock = args[:front_shock]
    @rear_shock = args[:rear_shock]
    @style = args[:style]
  end

  def spares
    if style == :road
      {
        chain: '10-speed',
        tire_size: '23',
        tape_colour: tape_colour
      }
    else
      {
        chain: '10-speed',
        tire_size: '2.1',
        rear_shock: rear_shock
      }
  end
end

# In this example, we now also need to deal with mountain bikes as well as road bikes. It can be tempting to simply add in the required arguments and use an if statement to check the style of bike. However it is almost impossible to describe this class without saying the word 'type' - if the type of bike is a road bike, then it does this etc. - this is the alarm bell that should be ringing. Isn't 'type' just the English word for class?