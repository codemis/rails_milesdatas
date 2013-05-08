# This file is part of Miles Datas.
# 
# Miles Datas is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# Miles Datas is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see 
# <http://www.gnu.org/licenses/>.
#
# @author Johnathan Pulos <johnathan@missionaldigerati.org>
# @copyright Copyright 2013 Missional Digerati
#
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
