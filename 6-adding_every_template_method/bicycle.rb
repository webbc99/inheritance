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

  # Now we have implemented the method - even though it returns a not implemented error, this makes the behaviour clear to other developers who might need to extend this code later or add other subclasses - they must implement default_tire_size in the subclass.
  def default_tire_size
    raise NotImplementedError, "This #{self.class} cannot respond to:"
  end
end