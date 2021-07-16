class MountainBike < Bicycle
  attr_reader :front_shock, :rear_shock

  def initialize(args)
    @front_shock = args[:front_shock]
    @rear_shock = args[:rear_shock]
    super(args)
  end

  def spares
    super.merge(rear_shock: rear_shock)
  end
end

# This example shows that you can't just blindly create a subclass and inherit all of the behaviour of the parent class.

mountain_bike = MountainBike.new(size: 'S', front_shock: 'Manitou', rear_shock: 'Fox')

mountain_bike.size
# "S"
mountain_bike.spares
# {:chain => "10-speed", :tire_size => "23", tape_colour: nil, rear_shock: "Fox"}
# The tire size is wrong, and the tape_colour is being listed even though we don't need tape on a mountain bike

# The Bicycle class was not written with inheritance in mind, so we we will need to refactor it