class MountainBike < Bicycle
  attr_reader :front_shock, :rear_shock

  def initialize(args={})
    @front_shock = args[:front_shock]
    @rear_shock = args[:rear_shock]
    super(args)
  end

  def default_tire_size
    '2.1'
  end

  def spares
    super.merge({rear_shock: rear_shock})
  end
end

# The spares method here will error, because it is not implemented in Bicycle, so we will need to fix this.
