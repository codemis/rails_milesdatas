class Record < ActiveRecord::Base
  attr_accessible :car, :reason, :start_lat, :start_location, :start_long, :start_odometer, :start_use_coords, :stop_lat, :stop_location, :stop_long, :stop_odometer, :stop_use_coords
	# sets up the CSV
	#
	def self.as_csv(options = {})
		puts "HERE"
	  CSV.generate(options) do |csv|
	    csv << column_names
	    all.each do |record|
	      csv << record.attributes.values_at(*column_names)
	    end
	  end
	end
end
