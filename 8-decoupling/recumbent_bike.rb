class RecumbentBike < Bicycle
  attr_reader :flag

  def post_initialize(args)
    @flag = args[:flag]
  end

  def local_spares
    { flag: flag }
  end
  
  def default_chain
    "9-speed"
  end

  def default_tire_size
    '28'
  end
end

# Now it is much easier to create a new subclass - we don't need to call super, we simply have to implement methods as needed, but none of them are required for the class to function except for default_tire_size, and we know we will see a NotImplemented error as soon as we try to do anything with this class, or when we look at the Bicycle class, so it's safe to do this.