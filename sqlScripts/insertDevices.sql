USE sodec;

INSERT INTO devices (name, description) VALUES
('s-temp-out', "Outside Temperature"),
('s-temp-bed', "Bedroom Temperature"),
('s-temp-bath', "Bathroom Temperature"),
('s-temp-lr', "Living Room Temperature"),
('s-temp-kit', "Kitchen Temperature"),
('s-hum-out', "Outside Humidity"),
('s-hum-bed', "Bedroom Humidity"),
('s-hum-bath', "Bathroom Humidity"),
('s-hum-lr', "Living Room Humidity"),
('s-hum-kit', "Kitchen Humidity"),
('s-occ-bed', "Bedroom Occupancy"),
('s-occ-mech', "Mechanical Room Occupancy"),
('s-occ-lr', "Living Room Occupancy"),
('s-occ-bath', "Bathroom Occupancy"),
('s-amb-bed', "Bedroom Ambient Light"),
('s-amb-mech', "Mechanical Room Ambient Light"),
('s-amb-lr', "Living Room Ambient Light"),
('s-amb-bath', "Bathroom Ambient Light"),
('c-light-bed', "Bedroom Light Control"),
('c-light-mech', "Mechanical Room Light Control"),
('c-light-lr', "Living Room Light Control"),
('c-light-bath', "Bathroom Light Control"),
('s-elec-used-laundry', "Laundry Circuit"),
('s-elec-used-dishwasher', "Dishwasher Circuit"),
('s-elec-used-refrigerator', "Refrigerator Circuit"),
('s-elec-used-induction-stove', "Induction Stove Circuit"),
('s-elec-used-ewh-solar-water-heater', "Water Heater Circuit"),
('s-elec-used-kitchen-receps-1', "Kitchen Outlets 1"),
('s-elec-used-kitchen-receps-2', "Kitchen Outlets 2"),
('s-elec-used-living-receps', "Living Room Outlets"),
('s-elec-used-dining-receps-1', "Dining Room Outlets 1"),
('s-elec-used-dining-receps-2', "Dining Room Outlets 2"),
('s-elec-used-bathroom-receps', "Bathroom Outlets"),
('s-elec-used-bedroom-receps-1', "Bathroom Outlets 1"),
('s-elec-used-bedroom-receps-2', "Bathroom Outlets 2"),
('s-elec-used-mechanical-receps', "Mechanical Room Outlets"),
('s-elec-used-entry-receps', "Entry Hall Outlets"),
('s-elec-used-exterior-receps', "Exterior Outlets"),
('s-elec-used-grey-water-pump-recep', "Greywater Pump Circuit"),
('s-elec-used-black-water-pump-recep', "Blackwater Pump Circuit"),
('s-elec-used-thermal-loop-pump-recep', "Thermal Loop Pump Circuit"),
('s-elec-used-water-supply-pump-recep', "Water Supply Pump Circuit"),
('s-elec-used-water-supply-booster-pump-recep', "Water Supply Booster Pump Circuit"),
('s-elec-used-vehicle-charging-recep', "Vehicle Charging Circuit"),
('s-elec-used-heat-pump-recep', 'Heat Pump Circuit'),
('s-elec-used-air-handler-recep', 'Air Handler Circuit'),
('s-elec-gen-top-array', 'Upward-facing solar panel'),
('s-elec-gen-bottom-array' 'Downward-facing solar panel'),
('s-temp-testing-blackhole', 'Blackhole Temperature'),
('s-temp-testing-empty', 'Empty Temperature'),
('s-light-entry-bookend-1A', 'Entry Bookend Light'),
('s-light-chandelier-1B', 'Chandelier Light'),
('s-light-tv-light-2A', 'TV Light'),
('s-light-kitchen-uplight-3A', 'Kitchen Uplight Light'),
('s-light-under-counter-3B', 'Kitchen Under-Counter Light'),
('s-light-pendant-bar-lights-3C', 'Kitchen Pendant Bar Lights'),
('s-light-bathroom-ambient-4A', 'Bathroom Light'),
('s-light-mirror-4B', 'Bathroom Mirror Light'),
('s-light-flexspace-uplight-5A', 'Flexspace Uplight Light'),
('s-light-flexspace-cabinet-5B', 'Flexspace Cabinet Light'),
('s-light-bedroom-uplight-6A', 'Bedroom Uplight Light'),
('s-light-bedroom-cabinet-6B', 'Bedroom Cabinet Light'),
('s-light-porch-lights-8A', 'Porch Lights'),
('s-light-uplights-and-pot-lights-8B', 'Uplights/Pot Lights')
ON DUPLICATE KEY UPDATE
   description=VALUES(description);
