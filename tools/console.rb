require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

travis = Band.new("travis","houston")

nrg = Venue.new("nrg","houston")

astroworld = Concert.new("01/01/19", travis, "park")

travis.concert

binding.pry