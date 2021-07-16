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

mountain_bike = MountainBike.new(size: 'S', front_shock: 'Manitou', rear_shock: 'Fox')

mountain_bike.size # Now errors because the method is not defined in in MountainBike or Bicycle - this reveals to us that the size method in RoadBike must be moved back up to Bicycle.
mountain_bike.spares # Now errors because super cannot be called since the spares method is not defined in Bicycle. However, the attributes in RoadBike's implemenation are not relevant to MountainBike, so we will need to split the abstract parts up to Bicycle, and keep the concrete parts in the subclasses.