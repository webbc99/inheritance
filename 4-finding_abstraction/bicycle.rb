class Bicycle
  # When Bicycle was first created, we only dealt with road bikes, so this was sufficient. When refactoring, we should move all of the Bicycle code into RoadBike because this was the original intention.

  # This way when we try to use MountainBike, it will reveal to us the functionality that must be present in the parent Bicycle class, the functionality that should be shared, and it will also reveal the code that does not need to go into the Bicycle class.
end