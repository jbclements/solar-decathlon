ALTER TABLE devices 
	ADD description VARCHAR(256) DEFAULT NULL;

UPDATE devices
	SET description = 
		(case 
			when name = 's-temp-bed' then 'Bedroom Temperature'
			when name = 's-temp-out' then 'Outside Temperature' 
			when name = 's-temp-bath' then 'Bathroom Temperature'
			when name = 's-temp-lr' then 'Living Room Temperature'
			when name = 's-hum-out' then 'Outside Humidity'
			when name = 's-hum-bed' then 'Bedroom Humidity'
			when name = 's-hum-bath' then 'Bathroom Humidity'
			when name = 's-hum-lr' then 'Living Room Humidity'
			when name = 's-occ-bed' then 'Bedroom Occupancy'
			when name = 's-occ-mech' then 'Mechanical Room Occupancy'
			when name = 's-occ-lr' then 'Living Room Occupancy'
			when name = 's-occ-bath' then 'Bathroom Occupancy'
			when name = 's-amb-bed' then 'Bedroom Ambient Light'
			when name = 's-amb-mech' then 'Mechanical Room Ambient Light'
			when name = 's-amb-lr' then 'Living Room Ambient Light'
			when name = 's-amb-bath' then 'Bathroom Ambient Light'
			when name = 'c-light-bed' then 'Bedroom Light Control'
			when name = 'c-light-mech' then 'Mechanical Room Light Control'
			when name = 'c-light-lr' then 'Living Room Light Control'
			when name = 'c-light-bath' then 'Bathroom Light Control'
			when name = 'c-light-kit' then 'Kitchen Light Control'
			when name = 's-temp-testing-blackhole' then 'Blackhole Temperature'
			when name = 's-temp-testing-empty' then 'Empty Temperature'
			when name = 's-light-entry-bookend-1A' then 'Entry Bookend Light'
			when name = 's-light-chandelier-1B' then 'Chandelier Light'
			when name = 's-light-tv-light-2A' then 'TV Light'
			when name = 's-light-kitchen-uplight-3A' then 'Kitchen Uplight Light'
			when name = 's-light-under-counter-3B' then 'Kitchen Under-Counter Light'
			when name = 's-light-pendant-bar-lights-3C' then 'Kitchen Pendant Bar Lights'
			when name = 's-light-bathroom-ambient-4A' then 'Bathroom Light'
			when name = 's-light-mirror-4B' then 'Bathroom Mirror Light'
			when name = 's-light-flexspace-uplight-5A' then 'Flexspace Uplight Light'
			when name = 's-light-flexspace-cabinet-5B' then 'Flexspace Cabinet Light'
			when name = 's-light-bedroom-uplight-6A' then 'Bedroom Uplight Light'
			when name = 's-light-bedroom-cabinet-6B' then 'Bedroom Cabinet Light'
			when name = 's-light-porch-lights-8A' then 'Porch Lights'
			when name = 's-light-uplights-and-pot-lights-8B' then 'Uplights/Pot Lights'
			when name = 'egauge' then 'Egauge'
		end);

ALTER TABLE devices 
	MODIFY description VARCHAR(256) NOT NULL;