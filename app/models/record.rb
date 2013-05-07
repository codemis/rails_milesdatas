class Record < ActiveRecord::Base
  attr_accessible :car, :reason, :start_lat, :start_location, :start_long, :start_odometer, :start_use_coords, :stop_lat, :stop_location, :stop_long, :stop_odometer, :stop_use_coords
end
