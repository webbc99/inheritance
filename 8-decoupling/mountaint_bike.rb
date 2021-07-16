class MountainBike < Bicycle
  attr_reader :front_shock, :rear_shock

  def post_initialize(args)
    @front_shock = args[:front_shock]
    @rear_shock = args[:rear_shock]
  end

  def local_spares
    { rear_shock: rear_shock }
  end

  def default_tire_size
    '2.1'
  end
end

# The subclasses no longer override the initialize method, instead this is inherited from the Bicycle class, and using a "hook" message in the form of the post_initialization method, the subclasses' specific attributes will be added to the initialization method, reducing coupling

# We aso implemented local_spares - this allows the subclasses to not know anything about how the spares method is implemented in Bicycle, which further reduces coupling. 