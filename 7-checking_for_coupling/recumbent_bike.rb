class RecumbentBike < Bicycle
  attr_reader :flag

  def initialize(args)
    @flag = args[:flag]
    # We forgot to add super here! When the RecumbentBike is initialized, it will be missing critical attributes
    # RecumbentBike is supposed to know that Bicycle is supplying some attributes which we need to use super to get
  end

  def spares
    super.merge({flag: flag})
    # spares knows that it's expecting to be able to merge this into an existing hash
  end

  def default_chain
    '9-speed'
  end

  def default_tire_size
    '28'
  end
end

# Imagine a mechanic that is tasked to fix one of these RecumbentBikes and our application has only arranged for a flag to be sent in the spare parts package