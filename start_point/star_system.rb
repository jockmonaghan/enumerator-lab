class StarSystem
  attr_reader :name, :planets

  def initialize (name, planets)
    @name = name
    @planets = planets
  end

  def planet_names()
    return @planets.map{|planet| planet.name}
  end

  def get_planet_by_name(planet_to_find)
    return @planets.find{|planet| planet.name == planet_to_find}
  end

  def get_largest_planet
    return @planets.max {|current_planet, next_planet| current_planet.diameter <=> next_planet.diameter}
  end

  def get_smallest_planet
    return @planets.min {|current_planet, next_planet| current_planet.diameter <=> next_planet.diameter}
  end

  def get_planets_with_no_moons
    return @planets.find_all{|planet| planet.number_of_moons == 0}
  end

  def get_planets_with_more_moons(moons)
    return @planets.find_all{|planet| planet.number_of_moons > moons}.map {|planet| planet.name}
  end

  def get_number_of_planets_closer_than(distance)
    return @planets.find_all{|planet| planet.distance_from_sun < distance}.count()
  end

  def get_total_number_of_moons
    return @planets.reduce(0){|total, planet| total += planet.number_of_moons}
  end

  def get_planet_names_sorted_by_increasing_distance_from_sun()
    return @planets.sort_by{|planet| planet.distance_from_sun}.map{|planet| planet.name}
  end

  def get_planet_names_sorted_by_size_decreasing()
    return @planets.sort_by{|planet| planet.diameter}.map{|planet| planet.name}.reverse()
  end


end
