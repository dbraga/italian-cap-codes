# encoding: UTF-8

# Add municipality
puts "Seeding municipalities.."
f = File.open("#{Rails.root}/db/seeds/seed_file.txt")
f.readlines.each do |line|
	sl = line.split(";")
	# Find or create the region containing the district and the municipality
	region = Region.find_or_create_by_full_name(full_name: sl[5], 
																																													short_name: sl[4])
	# Find or create the district containing the municipality
 district = District.find_or_create_by_full_name(full_name: sl[3], 
																										short_name: sl[2],
																										region: region)

 # Create the municipality
	m = Municipality.new
	m.istat_code = sl[0]
	m.name = sl[1]
	m.prefix = sl[6]
	m.cap = sl[7]
	m.fiscal_code = sl[8].strip
	m.district = district

	puts "Adding #{m.name} - #{m.district.full_name} - #{m.district.region.full_name}"
	unless m.save
		puts m.errors.inspect
	end
end
f.close
puts "--> Done"


