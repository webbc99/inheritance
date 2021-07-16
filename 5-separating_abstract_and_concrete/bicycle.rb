class Bicycle
  attr_reader :size, :chain, :tire_size

  def initialize(args={})
    @size = args[:size]
    @chain = args[:chain] || default_chain
    @tire_size = args[:tire_size] || default_tire_size
  end
  # We can use template methods such as default_chain and default_tire_size to set the default values if they are not supplied.

  def default_chain
    '10-speed'
  end
end

# Notice even though Bicycle sends default_tire_size, it doesn't implement it itself. This can cause confusion and readability issues for developers who might need to add an additional subclass later.