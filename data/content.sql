-- Xuru listing copy, verbatim (minus 2 boilerplate sentences). Generated.
UPDATE units u SET
  short_description = v.short_description,
  the_property      = v.the_property,
  guest_access      = v.guest_access,
  neighborhood      = v.neighborhood,
  getting_around    = v.getting_around,
  other_details     = v.other_details,
  amenities         = COALESCE(v.amenities, u.amenities)
FROM (VALUES
(93001,'Hi and welcome to The Terminal! This new modern fully furnished apartment is close to Airport (5 min away), restaurants and dining options are at w...','This fully furnished apartment includes a spacious living room with a couch, a dining  table and a fully equipped kitchen.

Cable TV and fast Wifi.

There are 2 bedrooms one of which is ensuite (with bathroom) and an additional separate bedroom.','Guests have access to the entire apartment.','The neighborhood is packed with cafés and restaurants along Ankara street which is close to the apartment.
This neighborhood is full of life with plenty of street food options (the apartment is quite and peaceful though)

- Banks and other services are also within walking distance.

- There is a sports complex for most sports activities (running track, football, basketball, squash, tennis..) which is a 10 min walk from the apartment.

- Sun City Mall and Cairo Complex are within 5 min walking distance.
- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive
- New Cairo is a 15 min drive
- Cairo International Airport is a 5 min drive.','All places are reachable by car, Uber app and Careem app but if you want take a walk it''s not going to take you more than 5 minutes to reach any of the services around.','Please note that additional unreported guests are not allowed to access or enter the property.',ARRAY['Fridge','Heating','Tv','Elevator','Microwave','Full Equipped Kitchen','Smoke detector','WiFi Internet','Washing Machine','Laptop Friendly Workspace','Ironing equipment','Coffee Maker','Bed Linens/Towels','Private entrance','Air Conditioning','Balcony','Hangers','Oven','Parking Included','Hair Dryer','Satellite Or Cable','Essentials','Carbon monoxide detector','Dishwasher','Freezer','Jacuzzi Bath','Kettle','Kids Friendly','Smoking Forbidden','24 Hour Check-in','Baby crib','Bottled Water','Fire extinguisher','First aid kit','Long Term Rentals Available','Self Check-in','Work Desk','Cleaning and disinfection','Contactless check-in and check-out','Street parking','Locked bedroom(s)','Energy-efficient devices','Cleaning before checkout','Suitable For Children (2+ years old)','Suitable For Infants (under 2 years)','Contemporary','Hand sanitizer','Hot water','Kitchenette','Stove','Wine glasses','Central Heating','Extra pillows and blankets','Professionally cleaned','Streaming service','Wardrobe','Travel cot','Gated property','Town']::text[]),
(93002,'This exclusive 2 bedroom designer apartment is located inside a very unique gated complex, 5 minutes to Cairo International Airport','very fast fiber optic WiFi and 24 hour security surveillance.
This apartment is perfect for families and business travelers. The apartment includes a spacious reception area with a combined living and dining room along with a fully equipped modern kitchen, cooking utensils and a coffee machine. The living room is furnished with a sofa set along with a 55 inch smart TV with Chromecast and AirPlay built-in for further personal entertainment.
There are two bedrooms (one with a queen bed and the other with two single beds) and two bathrooms (one full bathroom with a bath tub shower and a guest bathroom)
Please note the following:
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.','Guests have access to the entire apartment.','-Cafés and restaurants are along Ankara street which is about a 10 minute walk from the complex.
- Banks and other services are also within walking distance (inside Sun City Mall)
- Sun City Mall (banks and shopping) and Cairo Complex (for dining options) are within a 5 minute walking distance.
- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive
- New Cairo is a 15 min drive
- Cairo International Airport is a 5 min drive.','We provide concierge services that include airport transfers and private day tours.
All places are reachable by car, Uber app and Careem app but if you wish to take a walk it''s takes no more than 5 minutes to reach any of the services around.','Please note the following:
-PLEASE NOTE: Check-in time is at 3:00 PM, and our team is unavailable between 1:00 AM and 10:00 AM.
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.',ARRAY['Air Conditioning','Bed Linens/Towels','Carbon monoxide detector','Elevator','Essentials','Full Equipped Kitchen','Handicap Accessible','Hangers','Heating','Hot water','Ironing equipment','Kids Friendly','Laptop Friendly Workspace','Satellite Or Cable','Self Check-in','Smoke detector','Tv','Washing Machine','WiFi Internet','Bottled Water','Cleaning products','Coffee Maker','Dishwasher','Filtered Water','Freezer','Fridge','Kettle','Microwave','Oven','Stove','Wine glasses','Private entrance','Street parking','24 Hour Check-in','Central Heating','Extra pillows and blankets','Streaming service','Wardrobe','Gated Community','Smoking Forbidden','Energy-efficient devices','No single-use plastic ','Swimming','Town','Work Desk','Long Term Rentals Available','Outdoor pool','Shared Pool','Flat smooth pathway to front door','Shopping','Contactless check-in and check-out','Hand sanitizer','Professionally cleaned','Towels changed upon request','Wide hallway clearance','Contemporary','Cleaning and disinfection','Fire extinguisher','Jacuzzi Bath','Luxury linen','Cleaning before checkout','Kids Pool','Social distancing','Staff wear protective equipment','Suitable For Children (2+ years old)','Suitable For Infants (under 2 years)','First aid kit','Hair Dryer','Kitchenette','Gated property','No single-use toiletries','Paperless / recycled paper','Sustainable materials']::text[]),
(93003,'This earthy & modern 1 bedroom designer apartment is located in the lively neighbourhood of Heliopolis just outside Cairo International Airport.','This apartment is perfect for small families and business travelers. This one bedroom apartment includes a spacious reception area with a combined living and dining room that includes a foosball table.  There is a fully equipped kitchen, cooking utensils and a coffee machine. The living room is furnished with a sofa set along with a 40 inch smart TV with Chromecast and AirPlay built-in for further personal entertainment.
The bedroom includes a king size bed & a yoga corner and access to a full bathroom with a tub.
Please note the following:
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.
- Please be informed that there are two locked rooms in the apartment that are not accessible and contain private belongings, please use only the room advertised on the website.','Guests have access to the entire apartment. There are two locked unused rooms.','The neighborhood is packed with cafés and restaurants along El Nasr street which is close to the apartment.
This neighborhood is full of life with plenty of street food options (the apartment is quite and peaceful though)

- Banks and other services are also within walking distance.

- Cairo Complex is within 15 min walking distance and is packed with hangouts.
- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive
- New Cairo is a 15 min drive
- Cairo International Airport is a 5 min drive.','We provide concierge services that include airport transfers and private day tours.

All places are reachable by car, Uber app and Careem app but if you wish to take a walk it''s takes no more than 5 minutes to reach any of the services around.','Please note the following:
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.',ARRAY['Air Conditioning','Bed Linens/Towels','Carbon monoxide detector','Contactless check-in and check-out','Elevator','Essentials','Full Equipped Kitchen','Handicap Accessible','Hand sanitizer','Hangers','Heating','Hot water','Ironing equipment','Kids Friendly','Laptop Friendly Workspace','Satellite Or Cable','Self Check-in','Smoke detector','Tv','Washing Machine','WiFi Internet','Bottled Water','Cleaning products','Coffee Maker','Dishwasher','Filtered Water','Freezer','Fridge','Kettle','Microwave','Oven','Stove','Wine glasses','Private entrance','Street parking','24 Hour Check-in','Central Heating','Extra pillows and blankets','Professionally cleaned','Streaming service','Wardrobe','Baby crib','Locked bedroom(s)','Smoking Forbidden','Energy-efficient devices','No single-use plastic ','Towels changed upon request','Town','Work Desk','Long Term Rentals Available','Flat smooth pathway to front door','Tub with shower bench','Wide hallway clearance','Shopping','Contemporary','Cleaning and disinfection','Hair Dryer','Gated property','No single-use toiletries','Luxury linen','Suitable For Children (2+ years old)','Suitable For Infants (under 2 years)','Handheld shower head','Cleaning before checkout','Common space step free access','First aid kit','Kitchenette','Jacuzzi Bath']::text[]),
(93004,'This boldly beautiful apartment is located steps away from Cairo Festival City Mall in New Cairo and is managed by Xuru Stays','This unique 2 bedroom apartment is perfect for families and business travelers.

The 2 bedroom apartment includes a spacious reception area with a combined living and dining room that includes a bright outdoor balcony.  There is a fully equipped kitchen, cooking utensils and a Nespresso coffee machine. The living room is furnished with a sofa set along with a 55 inch smart TV with AirPlay built-in for further personal entertainment. There are two full bathrooms one of which is equipped with a bath tub.
The first bedroom includes a queen size bed & along with a spacious walk in dressing room.
The second bedroom includes two single beds.
Please note the following:
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.','Guests have access to the entire apartment. There is 1 locked unused room.','The neighborhood is peaceful, upscale and safe. Cairo Festival City Mall - considered to be the best mall in New Cairo,  is a 2 minute drive from the apartment.

- Cairo International Airport is a 10 min drive.
- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive','We provide concierge services that include airport transfers and private day tours.','Please note the following:
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.',ARRAY['Air Conditioning','Bed Linens/Towels','Carbon monoxide detector','Cleaning and disinfection','Contactless check-in and check-out','Essentials','Fire extinguisher','Full Equipped Kitchen','Hair Dryer','Hangers','Heating','Hot water','Ironing equipment','Kids Friendly','Laptop Friendly Workspace','Satellite Or Cable','Self Check-in','Smoke detector','Tv','Washing Machine','WiFi Internet','Bottled Water','Cleaning products','Coffee Maker','Dishwasher','Freezer','Fridge','Ice Maker','Kettle','Kitchenette','Microwave','Oven','Stove','Wine glasses','Balcony','Street parking','24 Hour Check-in','Central Heating','Extra pillows and blankets','Professionally cleaned','Wardrobe','Gated property','Locked bedroom(s)','Security System','Smoking Forbidden','Staff wear protective equipment','Energy-efficient devices','No single-use plastic ','No single-use toiletries','Paperless / recycled paper','Jacuzzi Bath','Luxury linen','Town','Work Desk','Cleaning before checkout','Long Term Rentals Available','Suitable For Children (2+ years old)','Suitable For Infants (under 2 years)','Shopping']::text[]),
(93005,'This 2 bedroom furnished apartment is closest to Airport (5 min away), restaurants and dining options are at walking distance (Sun City Mall & Cairo Complex). Located in the Heliopolis district which is considered upscale, safe and very accessible to highway roads and the ring road which connects the whole city of Cairo. It''s great for couples, families and is perfect for work trips too.','The apartment features 2 bedrooms and 2 full bathrooms, one of which is ensuite and a spacious colorful living room with a couch, a dining  table and a fully equipped kitchen with a Nespresso coffee machine and a kettle. Cooking utensils are also available. There is cable and smart TV to stream your favorite content along with fast and reliable Wifi.
There are 2 bedrooms one of which has a queen size bed and is ensuite and an additional separate bedroom with two single beds.','Guests have access to the entire apartment.','The neighborhood is packed with cafés and restaurants along Ankara street which is close to the apartment.
This neighborhood is full of life with plenty of street food options (the apartment is quite and peaceful though)

- Banks and other services are also within walking distance.

- There is a sports complex for most sports activities (running track, football, basketball, squash, tennis..) which is a 10 min walk from the apartment.

- Sun City Mall and Cairo Complex are within 5 min walking distance.
- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive
- New Cairo is a 15 min drive
- Cairo International Airport is a 5 min drive.','All places are reachable by car and Uber but if you want take a walk it''s not going to take you more than 5 minutes to reach any of the services around.','Please note that additional unreported guests are not allowed to access or enter the property.',ARRAY['Heating','Freezer','Fridge','Full Equipped Kitchen','Hot water','Coffee Maker','Dishwasher','Air Conditioning','Balcony','Bed Linens/Towels','Hair Dryer','Kettle','Kids Friendly','Long Term Rentals Available','Microwave','Oven','Satellite Or Cable','Smoking Forbidden','Tv','Washing Machine','Elevator','24 Hour Check-in','WiFi Internet','Ironing equipment','Essentials','Fire extinguisher','Hangers','Laptop Friendly Workspace','Self Check-in','Baby crib','Private entrance','Energy-efficient devices','Wardrobe','Extra pillows and blankets','Kitchenette','Stove','Wine glasses','Cleaning before checkout','Cleaning and disinfection','Suitable For Infants (under 2 years)','Suitable For Children (2+ years old)','Gated property','Contemporary','Street parking','Town','Professionally cleaned','Hand sanitizer','Contactless check-in and check-out','Luxury linen']::text[]),
(93006,'This bold and expressive studio is located at the heart of Downtown Cairo, 250 meters away from the iconic Tahrir Square. The studio is an 8 minute walk from the Egyptian Museum and is surrounded with all kinds of restaurants, gift shops and cafes. The studio apartment features a comfortable queen bed, a big bathroom with a Jacuzzi and a fully loaded kitchenette.','The studio apartment features a queen size comfortable bed, a bathroom with a Jacuzzi and a sofa bed. It also features a fully loaded kitchenette, cooking utensils and a Nespresso coffee machine. Additionally, guests can enjoy a 55 inch smart TV with AirPlay built-in for further personal entertainment.

Please note the following:
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.

The styling of the apartment is tailored to give the guests an authentic experience of Cairo''s Downtown.','Guests have access to the entire apartment.','Cairo''s Downtown is a busy neighborhood packed with a lot of places to explore and enjoy:

- The Egyptian Museum is an 8 minute walk.
- Tahrir Square is a 3 minute walk.
- Cairo International Airport is a 35 minute drive.
- Giza Pyramids is a 35 minute drive','We provide concierge services that include airport transfers and private day tours.','Please note the following:
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.',ARRAY['Heating','Freezer','Fridge','Hot water','Coffee Maker','Air Conditioning','Bed Linens/Towels','Hair Dryer','Jacuzzi','Kettle','Microwave','Smoking Forbidden','Tv','Elevator','WiFi Internet','Ironing equipment','Essentials','Smoke detector','Fire extinguisher','Hangers','Self Check-in','No single-use plastic ','No single-use toiletries','Kitchenette','Stove','Wine glasses','Cleaning before checkout','Luxury linen','Cleaning and disinfection','Suitable For Infants (under 2 years)','Suitable For Children (2+ years old)','Gated property','Downtown','Contactless check-in and check-out','Extra pillows and blankets','Professionally cleaned','Art Deco','Full Equipped Kitchen']::text[]),
(93007,'This piping hot 2 bedroom apartment is located at the heart of Downtown Cairo, 250 meters away from the iconic Tahrir Square. The studio is an 8 minute walk from the Egyptian Museum and is surrounded with all kinds of restaurants, gift shops and cafes. The apartment features 2 comfortable queen size beds, a 55 inch smart TV, a cozy bathroom and a fully loaded kitchenette with a seating area.','This 2 bedroom apartment features 2 rooms each with a queen size comfortable bed and an amazing city view balcony! It also features a fully loaded kitchenette, microwave, a stove top with cooking utensils, a kettle and a Nespresso coffee machine. Additionally, guests can enjoy a 55 inch smart TV with AirPlay built-in for further personal entertainment.

Please note the following:
- Smoking is only allowed in the balcony or outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.

The styling of the apartment is tailored to give the guests an authentic experience of Cairo''s Downtown.','Guests have access to the entire apartment.','Cairo''s Downtown is a busy neighborhood packed with a lot of places to explore and enjoy:

- The Egyptian Museum is an 8 minute walk.
- Tahrir Square is a 3 minute walk.
- Cairo International Airport is a 35 minute drive.
- Giza Pyramids is a 35 minute drive','We provide concierge services that include airport transfers and private day tours.','Please note the following:
- Smoking is only allowed in the balcony or outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.',ARRAY['Heating','Freezer','Fridge','Hot water','Coffee Maker','Air Conditioning','Balcony','Bed Linens/Towels','Hair Dryer','Kettle','Microwave','Smoking Forbidden','Tv','Elevator','WiFi Internet','Ironing equipment','Essentials','Smoke detector','Fire extinguisher','Hangers','Self Check-in','No single-use plastic ','No single-use toiletries','Wardrobe','Kitchenette','Stove','Wine glasses','Cleaning before checkout','Luxury linen','Cleaning and disinfection','Suitable For Children (2+ years old)','Gated property','Art Deco','Downtown','Professionally cleaned','Contactless check-in and check-out','Full Equipped Kitchen']::text[]),
(93008,'This Moroccan themed studio is located at the heart of Downtown Cairo, 250 meters away from the iconic Tahrir Square. The studio is an 8 min walk from the Egyptian Museum and is surrounded with all kinds of restaurants and cafes. The studio apartment features a comfortable queen size bed, an outdoor terrace with a Jacuzzi! , a 32 inch smart TV, cozy bathroom and a fully loaded kitchenette.','The Moroccan themed studio features a queen size comfortable bed and a breathtaking terrace with a Jacuzzi! It also features a fully loaded kitchenette, microwave, a stove top with cooking utensils, a kettle and a Nespresso coffee machine. Additionally, guests can enjoy a 32inch smart TV for further personal entertainment.

Please note the following:
- Smoking is only allowed in the balcony or outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.

The styling of the apartment is tailored to give the guests an authentic oriental experience themed with a Moroccan vibe.','Guests have access to the entire apartment.','Cairo''s Downtown is a busy neighborhood packed with a lot of places to explore and enjoy:

- The Egyptian Museum is an 8 minute walk.
- Tahrir Square is a 3 minute walk.
- Cairo International Airport is a 35 minute drive.
- Giza Pyramids is a 35 minute drive','We provide concierge services that include airport transfers and private day tours.','Please note the following:
- Smoking is only allowed in the balcony or outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.',ARRAY['Heating','Freezer','Fridge','Hot water','Coffee Maker','Air Conditioning','Bed Linens/Towels','Hair Dryer','Jacuzzi','Kettle','Kids Friendly','Microwave','Smoking Forbidden','Terrace','Tv','Elevator','WiFi Internet','Ironing equipment','Essentials','Smoke detector','Carbon monoxide detector','Fire extinguisher','Self Check-in','No single-use plastic ','No single-use toiletries','Extra pillows and blankets','Kitchenette','Stove','Wine glasses','Cleaning before checkout','Luxury linen','Cleaning and disinfection','Suitable For Children (2+ years old)','Gated property','Antique','Art Deco','Downtown','Professionally cleaned','Contactless check-in and check-out','Full Equipped Kitchen']::text[]),
(93009,'This Moroccan themed studio is located at the heart of Downtown Cairo, 250 meters away from the iconic Tahrir Square. The studio is an 8 min walk from the Egyptian Museum and is surrounded with all kinds of restaurants and cafes. The studio apartment features a comfortable queen size bed, a 55 inch smart TV, cozy bathroom and a fully loaded kitchenette.','The Moroccan themed studio features a queen size comfortable bed. It also features a fully loaded kitchenette, microwave, a stove top with cooking utensils, a kettle and a Nespresso coffee machine. Additionally, guests can enjoy a 55 inch smart TV for further personal entertainment.

Please note the following:
- Smoking is only allowed in the balcony or outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.

The styling of the apartment is tailored to give the guests an authentic oriental experience themed with a Moroccan vibe.','Guests have access to the entire apartment.','Cairo''s Downtown is a busy neighborhood packed with a lot of places to explore and enjoy:

- The Egyptian Museum is an 8 minute walk.
- Tahrir Square is a 3 minute walk.
- Cairo International Airport is a 35 minute drive.
- Giza Pyramids is a 35 minute drive','We provide concierge services that include airport transfers and private day tours.','Please note the following:
- Smoking is only allowed in the balcony or outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.',ARRAY['Heating','Freezer','Fridge','Hot water','Coffee Maker','Air Conditioning','Balcony','Bed Linens/Towels','Hair Dryer','Kettle','Microwave','Smoking Forbidden','Tv','Elevator','WiFi Internet','Ironing equipment','Essentials','Smoke detector','Carbon monoxide detector','Fire extinguisher','Hangers','Self Check-in','No single-use plastic ','No single-use toiletries','Shopping','Extra pillows and blankets','Cleaning products','Kitchenette','Stove','Wine glasses','Cleaning before checkout','Luxury linen','Cleaning and disinfection','Suitable For Children (2+ years old)','Paying parking off site','Gated property','Antique','Art Deco','Downtown','Professionally cleaned','Contactless check-in and check-out','Full Equipped Kitchen']::text[]),
(93010,'Welcome to your own stylish sanctuary in Downtown Cairo, A Moroccan-Inspired Oasis in the Heart of Cairo.','Blending Moroccan elegance with modern comfort, this studio is more than a place to sleep—it’s an experience rooted in culture, charm, and convenience.
- A plush queen-size bed—often praised as one of the most comfortable stays in Cairo.
- A sleek 55-inch smart TV for your favorite shows and winding down after city adventures.
- A thoughtfully equipped kitchenette with all the essentials for your short stay.
-  A clean, cozy bathroom designed with simplicity and comfort in mind.

Please note the following:
- Smoking is only allowed in the balcony or outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.','Guests have access to the entire apartment.','Located in a lively district full of restaurants, cafés, and cultural gems, this apartment is perfect for travelers seeking authenticity, walkability, and atmosphere.
Whether you’re exploring the city, enjoying a quiet night in, or soaking up the view with a book in hand—this is your home base for unforgettable Cairo moments.
- The Egyptian Museum is just 250 meters from the iconic Tahrir Square.
- An 8-minute walk to the Egyptian Museum.
- Cairo International Airport is a 35 minute drive.
- Giza Pyramids is a 35 minute drive','We provide concierge services that include airport transfers and private day tours.','Please note the following:
- Smoking is only allowed in the balcony or outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.',ARRAY['Heating','Fridge','Hot water','Coffee Maker','Air Conditioning','Balcony','Bed Linens/Towels','Hair Dryer','Kettle','Microwave','Smoking Forbidden','Tv','Elevator','WiFi Internet','Ironing equipment','Essentials','Smoke detector','Carbon monoxide detector','Fire extinguisher','Hangers','Self Check-in','No single-use plastic ','No single-use toiletries','Shopping','Extra pillows and blankets','Kitchenette','Stove','Wine glasses','Cleaning before checkout','Luxury linen','Cleaning and disinfection','Suitable For Children (2+ years old)','Gated property','Antique','Art Deco','Downtown','Professionally cleaned','Contactless check-in and check-out','Full Equipped Kitchen']::text[]),
(93011,'This piping hot studio is located at the heart of Downtown Cairo, 250 meters away from the iconic Tahrir Square. The studio is an 8 min walk from the Egyptian Museum and is surrounded with all kinds of restaurants and cafes. The studio apartment features a comfortable queen size bed with a vintage tub! , a 55 inch smart TV, a cozy bathroom and a fully loaded kitchenette with a seating area.','The studio apartment features a queen size comfortable bed and an amazing freestanding vintage tub! It also features a fully loaded kitchenette, microwave, a stove top with cooking utensils, a kettle and a Nespresso coffee machine. Additionally, guests can enjoy a 55 inch smart TV with AirPlay built-in for further personal entertainment.

Please note the following:
- Smoking is only allowed in the balcony or outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.

The styling of the apartment is tailored to give the guests an authentic experience of Cairo''s Downtown.','Guests have access to the entire apartment.','Cairo''s Downtown is a busy neighborhood packed with a lot of places to explore and enjoy:

- The Egyptian Museum is an 8 minute walk.
- Tahrir Square is a 3 minute walk.
- Cairo International Airport is a 35 minute drive.
- Giza Pyramids is a 35 minute drive','We provide concierge services that include airport transfers and private day tours.','Please note the following:
- Smoking is only allowed in the balcony or outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.',ARRAY['Heating','Fridge','Hot water','Coffee Maker','Air Conditioning','Balcony','Bed Linens/Towels','Hair Dryer','Jacuzzi Bath','Kettle','Microwave','Smoking Forbidden','Tv','Elevator','WiFi Internet','Ironing equipment','Essentials','Smoke detector','Carbon monoxide detector','Fire extinguisher','Hangers','Self Check-in','No single-use plastic ','No single-use toiletries','Shopping','Extra pillows and blankets','Cleaning products','Kitchenette','Stove','Wine glasses','Cleaning before checkout','Luxury linen','Cleaning and disinfection','Suitable For Children (2+ years old)','Paying parking off site','Gated property','Antique','Art Deco','Downtown','Professionally cleaned','Contactless check-in and check-out','Full Equipped Kitchen']::text[]),
(93012,'This nostalgic 2 bedroom apartment is located at the heart of Downtown Cairo, 250 meters away from the iconic Tahrir Square. The studio is an 8 minute walk from the Egyptian Museum and is surrounded with all kinds of restaurants, gift shops and cafes. The apartment features 2 comfortable queen size beds, a 55 inch smart TV, a cozy bathroom and a fully loaded kitchenette with a sofa bed.','This 2 bedroom apartment features 2 rooms each with a queen size comfortable bed and a nice small balcony! It also features a sofa bed and a fully loaded kitchenette, small dining table, microwave, a stove top with cooking utensils, a kettle and a Nespresso coffee machine. Additionally, guests can enjoy a 55 inch smart TV with AirPlay built-in for further personal entertainment.

Please note the following:
- Smoking is only allowed in the balcony or outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.

The styling of the apartment is tailored to give the guests an authentic experience of Cairo''s Downtown.','Guests have access to the entire apartment.','Cairo''s Downtown is a busy neighborhood packed with a lot of places to explore and enjoy:

- The Egyptian Museum is an 8 minute walk.
- Tahrir Square is a 3 minute walk.
- Cairo International Airport is a 35 minute drive.
- Giza Pyramids is a 35 minute drive','We provide concierge services that include airport transfers and private day tours.','Please note the following:
- Smoking is only allowed in the balcony or outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.',ARRAY['Heating','Fridge','Hot water','Coffee Maker','Air Conditioning','Balcony','Bed Linens/Towels','Hair Dryer','Kettle','Microwave','Smoking Forbidden','Tv','Elevator','WiFi Internet','Ironing equipment','Essentials','Smoke detector','Carbon monoxide detector','Fire extinguisher','Hangers','Self Check-in','No single-use plastic ','No single-use toiletries','Shopping','Extra pillows and blankets','Cleaning products','Kitchenette','Stove','Wine glasses','Cleaning before checkout','Luxury linen','Cleaning and disinfection','Suitable For Children (2+ years old)','Gated property','Antique','Art Deco','Downtown','Professionally cleaned','Contactless check-in and check-out','Full Equipped Kitchen']::text[]),
(93013,'The studio features a queen size comfortable bed and a breathtaking terrace with a rooftop!','The studio features a queen size comfortable bed and a breathtaking terrace with a rooftop! It also features a fully loaded kitchenette, microwave, a stove top with cooking utensils, a kettle and a Nespresso coffee machine. Additionally, guests can enjoy a 32inch smart TV for further personal entertainment.

Please note the following:
- Smoking is only allowed in the balcony or outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.','This is an entire studio and guests can have access to all of its features.','The neighborhood is peaceful, upscale and safe. Cairo Festival City Mall - considered to be the best mall in New Cairo,  is a 2 minute drive from the apartment.

- Cairo International Airport is a 10 min drive.
- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive','We provide concierge services that include airport transfers and private day tours.','Please note the following:
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.',ARRAY['Heating','Freezer','Fridge','Full Equipped Kitchen','Bottled Water','Central Heating','Hot water','Coffee Maker','Air Conditioning','Balcony','Bed Linens/Towels','Hair Dryer','Kettle','Kids Friendly','Microwave','Oven','Parking Included','Satellite Or Cable','Smoking Forbidden','Tv','Washing Machine','WiFi Internet','Ironing equipment','Essentials','Smoke detector','Carbon monoxide detector','Hangers','Clothes Dryer','No single-use plastic ','No single-use toiletries','Shopping','Wardrobe','Extra pillows and blankets','Kitchenette','Stove','Wine glasses','Luxury linen','Cleaning and disinfection','Suitable For Infants (under 2 years)','Suitable For Children (2+ years old)','Gated property','Street parking','Town','Staff wear protective equipment']::text[]),
(93014,'This unique 2 bedroom apartment is perfect for families and business travelers.','This unique 2 bedroom apartment is perfect for families and business travelers.

The 2 bedroom apartment includes a spacious reception area with a combined living that includes a bright outdoor balcony.  There is a fully equipped kitchen, cooking utensils and a Nespresso coffee machine. The living room is furnished with a sofa set along with a 55 inch smart TV with AirPlay built-in for further personal entertainment. There are two full bathrooms one of which is equipped with a bath tub.
The first bedroom includes a queen size bed & along with a spacious walk in dressing room.
The second bedroom includes two single beds.
Please note the following:
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.','Guests have access to the entire apartment. There is 1 locked unused room.','The neighborhood is peaceful, upscale and safe. Cairo Festival City Mall - considered to be the best mall in New Cairo,  is a 2 minute drive from the apartment.

- Cairo International Airport is a 10 min drive.
- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive','We provide concierge services that include airport transfers and private day tours.','Please note the following:
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.',ARRAY['Long Term Rentals Available','Central Heating','Bottled Water','Air Conditioning','Coffee Maker','Dishwasher','Hair Dryer','WiFi Internet','Kids Friendly','Microwave','Washing Machine','Tv','Security System','Satellite Or Cable','Kettle','Oven','Fridge','Freezer','Ironing equipment','Full Equipped Kitchen','Balcony','Smoking Forbidden','Bed Linens/Towels','Heating','Essentials','Smoke detector','Carbon monoxide detector','Fire extinguisher','Hangers','Laptop Friendly Workspace','No single-use plastic ','No single-use toiletries','Hot water','Shopping','Wardrobe','Extra pillows and blankets','Cleaning products','Kitchenette','Stove','Wine glasses','Cleaning before checkout','Luxury linen','Street parking','Town','Gated property','Cleaning and disinfection','Staff wear protective equipment','Suitable For Infants (under 2 years)','Suitable For Children (2+ years old)']::text[]),
(93015,'The trendy and colorful apartment sleeps 4 guests comfortably. The apartment has 1 closed bedroom, 1 glass bedroom, a small full bathroom and a kitchenette. It is fully equipped with all the amenities needed to make your stay unique and memorable and is managed by Xuru Stays.','The apartment features 2 bedrooms, one of which is a glass bedroom and 1 full bathroom, with a spacious colorful living room that is furnished with a couch, a dining  table and a fully equipped kitchenette featuring a Nespresso coffee machine, kettle, cooking utensils, microwave and a hot plate for cooking. There is cable and smart TV to stream your favorite content along with fast and reliable Wifi.
There bedrooms feature queen size beds.','Guests have access to the entire apartment.','The neighborhood is packed with cafés and restaurants.
This neighborhood is full of life with plenty of street food options (the apartment is quite and peaceful though)

- Banks and other services are also within walking distance.

- There is a sports complex for most sports activities (running track, football, basketball, squash, tennis..) which is a 10 min walk from the apartment.

- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive
- New Cairo is a 15 min drive
- Cairo International Airport is a 5 min drive.','All places are reachable by car and Uber but if you want take a walk it''s not going to take you more than 5 minutes to reach any of the services around.','Please note that additional unreported guests are not allowed to access or enter the property.',ARRAY['Air Conditioning','Coffee Maker','Hair Dryer','WiFi Internet','Microwave','Washing Machine','Tv','Kettle','Oven','Fridge','Ironing equipment','Full Equipped Kitchen','Smoking Forbidden','Elevator','Bed Linens/Towels','Heating','Essentials','Smoke detector','Carbon monoxide detector','Fire extinguisher','Hangers','No single-use plastic ','No single-use toiletries','Hot water','Extra pillows and blankets','Kitchenette','Stove','Wine glasses','Luxury linen','Gated property','Professionally cleaned','Cleaning and disinfection','Suitable For Infants (under 2 years)','Suitable For Children (2+ years old)']::text[]),
(93016,'This elegant blue studio features a queen size bed, a spacious bathroom, a dining corner and a nice kitchenette. The studio apartment is perfect for small families and business travelers and is managed by Xuru Stays.','This deep blue studio is perfect for small families and business travelers.  The studio features a queen size comfortable bed with a working desk. It also features a fully loaded kitchenette, microwave, a stove top with cooking utensils, a kettle and a Nespresso coffee machine. Additionally, guests can enjoy a 55 inch smart TV for further personal entertainment at the bedroom and a 43 inch smart TV at the dining corner.','Guests have access to the entire apartment.','The neighborhood is full of life with plenty of street food options (the apartment is quite and peaceful though)

- Banks and other services are also within walking distance.

- Cairo Complex is within 15 min walking distance and is packed with hangouts.
- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive
- New Cairo is a 15 min drive
- Cairo International Airport is a 5 min drive.','We provide concierge services that include airport transfers and private day tours.','Please note the following:
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.',NULL::text[]),
(93017,'This trendy and colorful apartment sleeps 4 guests comfortably. The apartment has 1 closed bedroom, 1 glass bedroom, a small full bathroom and a kitchenette. It is fully equipped with all the amenities needed to make your stay unique and memorable and is managed by Xuru Stays.','The apartment features 2 bedrooms, one of which is a glass bedroom and 1 full bathroom, with a spacious colorful living room that is furnished with a couch, a dining  table and a fully equipped kitchenette featuring a Nespresso coffee machine, kettle, cooking utensils, microwave and a hot plate for cooking. There is cable and smart TV to stream your favorite content along with fast and reliable Wifi.
There bedrooms feature queen size beds.','Guests have access to the entire apartment.','The neighborhood is packed with cafés and restaurants.
This neighborhood is full of life with plenty of street food options (the apartment is quite and peaceful though)

- Banks and other services are also within walking distance.

- There is a sports complex for most sports activities (running track, football, basketball, squash, tennis..) which is a 10 min walk from the apartment.

- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive
- New Cairo is a 15 min drive
- Cairo International Airport is a 5 min drive.','All places are reachable by car and Uber but if you want take a walk it''s not going to take you more than 5 minutes to reach any of the services around.','Please note that additional unreported guests are not allowed to access or enter the property.',NULL::text[]),
(93018,'The studio features a queen size comfortable bed and a breathtaking terrace with a rooftop!','The studio features a queen size comfortable bed and a breathtaking terrace with a rooftop! It also features a fully loaded kitchenette, microwave, a stove top with cooking utensils, a kettle and a Nespresso coffee machine. Additionally, guests can enjoy a 32inch smart TV for further personal entertainment.

Please note the following:
- Smoking is only allowed in the balcony or outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.','This is an entire studio and guests can have access to all of its features.','The neighborhood is peaceful, upscale and safe. Cairo Festival City Mall - considered to be the best mall in New Cairo,  is a 2 minute drive from the apartment.

- Cairo International Airport is a 10 min drive.
- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive','We provide concierge services that include airport transfers and private day tours.','Please note the following:
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.',NULL::text[]),
(93019,'This exclusive 2 bedroom designer apartment is located inside a very unique gated complex, 5 minutes to Cairo International Airport','very fast fiber optic WiFi and 24 hour security surveillance.
This apartment is perfect for families and business travelers. The apartment includes a spacious reception area with a combined living and dining room along with a fully equipped modern kitchen, cooking utensils and a coffee machine. The living room is furnished with a sofa set along with a 55 inch smart TV with Chromecast and AirPlay built-in for further personal entertainment.
There are two bedrooms  and three bathrooms (two full bathrooms  with a bath tub shower and a guest bathroom)
Please note the following:
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.','Guests have access to the entire apartment.','-Cafés and restaurants are along Ankara street which is about a 10 minute walk from the complex.
- Banks and other services are also within walking distance (inside Sun City Mall)
- Sun City Mall (banks and shopping) and Cairo Complex (for dining options) are within a 5 minute walking distance.
- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive
- New Cairo is a 15 min drive
- Cairo International Airport is a 5 min drive.','We provide concierge services that include airport transfers and private day tours.
All places are reachable by car, Uber app and Careem app but if you wish to take a walk it''s takes no more than 5 minutes to reach any of the services around.','Please note the following:
-PLEASE NOTE: Check-in time is at 3:00 PM, and our team is unavailable between 1:00 AM and 10:00 AM.
-  20% discount applied on long stay starting from 1month.
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.',NULL::text[]),
(93020,'The apartment features 2 bedrooms,1 full bathroom and a half bathroom, with a spacious colorful living room that is furnished with a couch, a dining  table and a fully equipped kitchenette featuring a Nespresso coffee machine, kettle, cooking utensils, microwave and a hot plate for cooking.','The apartment features 2 bedrooms,1 full bathroom and a half bathroom, with a spacious colorful living room that is furnished with a couch, a dining  table and a fully equipped kitchenette featuring a Nespresso coffee machine, kettle, cooking utensils, microwave and a hot plate for cooking. There is cable and smart TV to stream your favorite content along with fast and reliable Wifi.
One bedroom features king size bed and the other features queen size bed.','Guests have access to the entire apartment.','The neighborhood is packed with cafés and restaurants.
This neighborhood is full of life with plenty of street food options (the apartment is quite and peaceful though)

- Banks and other services are also within walking distance.

- There is a sports complex for most sports activities (running track, football, basketball, squash, tennis..) which is a 10 min walk from the apartment.

- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive
- New Cairo is a 15 min drive
- Cairo International Airport is a 5 min drive.','All places are reachable by car and Uber but if you want take a walk it''s not going to take you more than 5 minutes to reach any of the services around.','Please note that additional unreported guests are not allowed to access or enter the property.',NULL::text[]),
(93021,'The apartment features 2 bedrooms, and 2 full bathrooms  with a spacious colorful living room that is furnished with a couch, a dining  table and a fully equipped kitchenette featuring a Nespresso coffee machine, kettle, cooking utensils, microwave and a hot plate for cooking.','The apartment features 2 bedrooms, and 2 full bathrooms  with a spacious colorful living room that is furnished with a couch, a dining  table and a fully equipped kitchenette featuring a Nespresso coffee machine, kettle, cooking utensils, microwave and a hot plate for cooking. There is cable and smart TV to stream your favorite content along with fast and reliable Wifi.
One bedroom features king size bed and the other features queen size bed.','Guests have access to the entire apartment.','The neighborhood is packed with cafés and restaurants.
This neighborhood is full of life with plenty of street food options (the apartment is quite and peaceful though)

- Banks and other services are also within walking distance.

- There is a sports complex for most sports activities (running track, football, basketball, squash, tennis..) which is a 10 min walk from the apartment.

- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive
- New Cairo is a 15 min drive
- Cairo International Airport is a 5 min drive.','All places are reachable by car and Uber but if you want take a walk it''s not going to take you more than 5 minutes to reach any of the services around.','Please note that additional unreported guests are not allowed to access or enter the property.',NULL::text[]),
(93022,'Discover your modern retreat at New Cairo, This apartment offers both convenience and comfort. The perfect base for short or Extended stays in Cairo.','This stylish and comfortable apartment is designed for both short and extended stays.

Inside, you’ll find:
✔️Two bedrooms with a Queen-size beds.
✔️Two full bathrooms plus one guest bath.
✔️A spacious open-plan living room with exotic touches.
✔️A dining area for enjoying meals together.
✔️A full equipped kitchen with a Nespresso machine, kettle, hot plate, microwave, and cooking utensils.
✔️A 55-inch Smart TV with cable and streaming access.
✔️Reliable Wi-Fi for work or entertainment.
✔️Complimentary bottled water, and two coffee capsules.','You’ll have the entire place to yourself—no shared spaces, just your own slice of serenity.','✔️Cairo Festival City Mall - considered to be the best mall in New Cairo,  is a 15 minute drive from the apartment.
✔️Cairo International Airport is a 20 min drive.
✔️Giza Pyramids is a 50 min drive
✔️Downtown Cairo is a 30 min drive','✔️ Private Services: We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
✔️ Free of charge parking is available.','✔️ Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors).
✔️ Visitors are not allowed, only confirmed guests will be granted entry.
✔️ All guests must provide a valid ID for registration with the building manager before or upon check-in.
✔️ You may be asked to show identification to access certain facilities in the building.
✔️ Free of charge parking is available.',NULL::text[]),
(93023,'Discover your modern retreat at New Cairo, This apartment offers both convenience and comfort. The perfect base for short or Extended stays in Cairo.','This stylish and comfortable apartment is designed for both short and extended stays.

Inside, you’ll find:
✔️Two bedrooms with a Queen-size beds.
✔️Two full bathrooms plus one guest bath.
✔️A spacious open-plan living room with exotic touches.
✔️A dining area for enjoying meals together.
✔️A full equipped kitchen with a Nespresso machine, kettle, hot plate, microwave, and cooking utensils.
✔️A 55-inch Smart TV with cable and streaming access.
✔️Reliable Wi-Fi for work or entertainment.
✔️Complimentary bottled water, and two coffee capsules.','You’ll have the entire place to yourself—no shared spaces, just your own slice of serenity.','✔️Cairo Festival City Mall - considered to be the best mall in New Cairo,  is a 15 minute drive from the apartment.
✔️Cairo International Airport is a 20 min drive.
✔️Giza Pyramids is a 50 min drive
✔️Downtown Cairo is a 30 min drive','✔️ Private Services: We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
✔️ Free of charge parking is available.','✔️ Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors).
✔️ Visitors are not allowed, only confirmed guests will be granted entry.
✔️ All guests must provide a valid ID for registration with the building manager before or upon check-in.
✔️ You may be asked to show identification to access certain facilities in the building.
✔️ Free of charge parking is available.',NULL::text[]),
(93024,'This exclusive 2 bedroom designer apartment is located inside a very unique gated complex , 5 minutes to Cairo International Airport','very fast fiber optic WiFi and 24 hour security surveillance.
This apartment is perfect for families and business travelers. The apartment includes a spacious reception area with a combined living and dining room along with a fully equipped modern kitchen, cooking utensils and a coffee machine. The living room is furnished with a sofa set along with a 55 inch smart TV with Chromecast and AirPlay built-in for further personal entertainment.
There are two bedrooms (one with a queen bed and the other with two single beds) and two bathrooms (one full bathroom with a bath tub shower and a guest bathroom)
Please note the following:
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.','Guests have access to the entire apartment.','-Cafés and restaurants are along Ankara street which is about a 10 minute walk from the complex.
- Banks and other services are also within walking distance (inside Sun City Mall)
- Sun City Mall (banks and shopping) and Cairo Complex (for dining options) are within a 5 minute walking distance.
- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive
- New Cairo is a 15 min drive
- Cairo International Airport is a 5 min drive.','We provide concierge services that include airport transfers and private day tours.
All places are reachable by car, Uber app and Careem app but if you wish to take a walk it''s takes no more than 5 minutes to reach any of the services around.','Please note the following:
-PLEASE NOTE: Check-in time is at 3:00 PM, and our team is unavailable between 1:00 AM and 10:00 AM.
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.',NULL::text[]),
(93025,'The apartment features 2 bedrooms and 2 bathrooms, and a spacious colorful living room with a couch, a dining  table and a fully equipped kitchen with a Nespresso coffee machine and a kettle. Cooking utensils are also available. There is cable and smart TV to stream your favorite content along with fast and reliable Wifi.','The apartment features 2 bedrooms and 2 bathrooms, and a spacious colorful living room with a couch, a dining  table and a fully equipped kitchen with a Nespresso coffee machine and a kettle. Cooking utensils are also available. There is cable and smart TV to stream your favorite content along with fast and reliable Wifi.','Guests have access to the entire apartment.','The neighborhood is packed with cafés and restaurants along Ankara street which is close to the apartment.
This neighborhood is full of life with plenty of street food options (the apartment is quite and peaceful though)

- Banks and other services are also within walking distance.

- Sun City Mall and Cairo Complex are within 5 min walking distance.
- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive
- New Cairo is a 15 min drive
- Cairo International Airport is a 5 min drive.','All places are reachable by car and Uber but if you want take a walk it''s not going to take you more than 5 minutes to reach any of the services around.','Please note that additional unreported guests are not allowed to access or enter the property.
Only families and business travelers are allowed.',NULL::text[]),
(93026,'This deep red studio is perfect for small families and business travelers. The studio features a queen size comfortable bed with a working desk.','This deep red studio is perfect for small families and business travelers.  The studio features a queen size comfortable bed with a working desk. It also features a fully loaded kitchenette, microwave, a stove top with cooking utensils, a kettle and a Nespresso coffee machine. Additionally, guests can enjoy a 55 inch smart TV for further personal entertainment.','Guests have access to the entire apartment.','The neighborhood is full of life with plenty of street food options (the apartment is quite and peaceful though)

- Banks and other services are also within walking distance.

- Cairo Complex is within 15 min walking distance and is packed with hangouts.
- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive
- New Cairo is a 15 min drive
- Cairo International Airport is a 5 min drive.','We provide concierge services that include airport transfers and private day tours.

All places are reachable by car, Uber app and Careem app but if you wish to take a walk it''s takes no more than 5 minutes to reach any of the services around.','Please note the following:
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.',NULL::text[]),
(93027,'This deep red studio is perfect for small families and business travelers. The studio features a queen size comfortable bed with a working desk.','This deep red studio is perfect for small families and business travelers.  The studio features a queen size comfortable bed with a working desk. It also features a fully loaded kitchenette, microwave, a stove top with cooking utensils, a kettle and a Nespresso coffee machine. Additionally, guests can enjoy a 55 inch smart TV for further personal entertainment.','Guests have access to the entire apartment.','The neighborhood is full of life with plenty of street food options (the apartment is quite and peaceful though)

- Banks and other services are also within walking distance.

- Cairo Complex is within 15 min walking distance and is packed with hangouts.
- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive
- New Cairo is a 15 min drive
- Cairo International Airport is a 5 min drive.','We provide concierge services that include airport transfers and private day tours.

All places are reachable by car, Uber app and Careem app but if you wish to take a walk it''s takes no more than 5 minutes to reach any of the services around.','Please note the following:
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.',NULL::text[]),
(93028,'The trendy and colorful apartment sleeps 4 guests comfortably. The apartment has 1 closed bedroom, 1 glass bedroom, a small full bathroom and a kitchenette. It is fully equipped with all the amenities needed to make your stay unique and memorable and is managed by Xuru Stays.','The apartment features 2 bedrooms, one of which is a glass bedroom and 1 full bathroom, with a spacious colorful living room that is furnished with a couch, a dining  table and a fully equipped kitchenette featuring a Nespresso coffee machine, kettle, cooking utensils, microwave and a hot plate for cooking. There is cable and smart TV to stream your favorite content along with fast and reliable Wifi.
There bedrooms feature queen size beds.','Guests have access to the entire apartment.','The neighborhood is packed with cafés and restaurants.
This neighborhood is full of life with plenty of street food options (the apartment is quite and peaceful though)

- Banks and other services are also within walking distance.

- There is a sports complex for most sports activities (running track, football, basketball, squash, tennis..) which is a 10 min walk from the apartment.

- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive
- New Cairo is a 15 min drive
- Cairo International Airport is a 5 min drive.','All places are reachable by car and Uber but if you want take a walk it''s not going to take you more than 5 minutes to reach any of the services around.','Please note that additional unreported guests are not allowed to access or enter the property.',NULL::text[]),
(93029,'The trendy and colorful apartment sleeps 4 guests comfortably. The apartment has 1 closed bedroom, 1 glass bedroom, a small full bathroom and a kitchenette. It is fully equipped with all the amenities needed to make your stay unique and memorable and is managed by Xuru Stays.','The apartment features 2 bedrooms, one of which is a glass bedroom and 1 full bathroom, with a spacious colorful living room that is furnished with a couch, a dining  table and a fully equipped kitchenette featuring a Nespresso coffee machine, kettle, cooking utensils, microwave and a hot plate for cooking. There is cable and smart TV to stream your favorite content along with fast and reliable Wifi.
There bedrooms feature queen size beds.','Guests have access to the entire apartment.','The neighborhood is packed with cafés and restaurants.
This neighborhood is full of life with plenty of street food options (the apartment is quite and peaceful though)

- Banks and other services are also within walking distance.

- There is a sports complex for most sports activities (running track, football, basketball, squash, tennis..) which is a 10 min walk from the apartment.

- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive
- New Cairo is a 15 min drive
- Cairo International Airport is a 5 min drive.','All places are reachable by car and Uber but if you want take a walk it''s not going to take you more than 5 minutes to reach any of the services around.','Please note that additional unreported guests are not allowed to access or enter the property.',NULL::text[]),
(93030,'This spacious 3 bedroom apartment is perfect for families and business travelers.','This spacious 3 bedroom apartment is perfect for families and business travelers.

The 3 bedroom apartment includes a spacious reception area with a combined living that includes a bright outdoor balcony.  There is a fully equipped kitchen, cooking utensils and a Nespresso coffee machine. The living room is furnished with a sofa set along with a 65 inch smart TV with AirPlay built-in for further personal entertainment. There are two full bathrooms one of which is equipped with a bath tub.
The first bedroom includes a king size bed & along with a spacious walk in dressing room.
The second bedroom includes one queen size bed, and the third bedroom includes one double bed.
Please note the following:
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.','Guests have access to the entire apartment.','The neighborhood is peaceful, upscale and safe. Cairo Festival City Mall - considered to be the best mall in New Cairo,  is a 2 minute drive from the apartment.

- Cairo International Airport is a 10 min drive.
- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive','We provide concierge services that include airport transfers and private day tours.','Please note the following:
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.',NULL::text[]),
(93031,'This trendy  apartment sleeps 4 guests comfortably. 2 full bathrooms and a full kitchen. It is fully equipped with all the amenities needed to make your stay unique and memorable and is managed by Xuru Stays.','The apartment features 2 bedrooms,  and 2 full bathroom, with a spacious  living room that is furnished with a couch, a dining  table and a fully equipped kitchenette featuring a Nespresso coffee machine, kettle, cooking utensils, microwave and a hot plate for cooking. There is cable and smart TV to stream your favorite content along with fast and reliable Wifi.

There bedrooms feature king size beds.','Guests have access to the entire apartment.','The neighborhood is packed with cafés and restaurants.
This neighborhood close to city center mall  (the apartment is quite and peaceful though)

- Banks and other services are also within walking distance.

- There is a sports complex for most sports activities (running track, football, basketball, squash, tennis..) which is a 10 min walk from the apartment.

- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive
- New Cairo is a 15 min drive
- Cairo International Airport is a 5 min drive.','All places are reachable by car and Uber but if you want take a walk it''s not going to take you more than 5 minutes to reach any of the services around.','Please note that additional unreported guests are not allowed to access or enter the property.',NULL::text[]),
(93032,'This rustic one bedroom apartment is perfect for couples & business travelers with an amazing rooftop.','This rustic one bedroom apartment is perfect for couples & business travelers.  The apartment features a single size comfortable bed . It also features a fully loaded kitchenette, microwave, a stove top with cooking utensils, a kettle and a Nespresso coffee machine. Additionally, amazing rooftop with around apartment terrace.','Guests have access to the entire apartment.','The neighborhood is full of life with plenty of street food options (the apartment is quite and peaceful though)

- Banks and other services are also within walking distance.

- Cairo Complex is within 20min walking distance and is packed with hangouts.
- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive
- New Cairo is a 15 min drive
- Cairo International Airport is a 15 min drive.','We provide concierge services that include airport transfers and private day tours.

All places are reachable by car, Uber app and Careem app but if you wish to take a walk it''s takes no more than 5 minutes to reach any of the services around.','Please note the following:
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.',NULL::text[]),
(93033,'This fabulous 2 bedroom designer apartment is located inside a very unique gated complex , 5 minutes to Cairo International Airport.','very fast fiber optic WiFi and 24 hour security surveillance.
This apartment is perfect for families and business travelers. The apartment includes a spacious reception area with a combined living and dining room along with a fully equipped modern kitchen, cooking utensils and a coffee machine. The living room is furnished with a sofa set along with a 55 inch smart TV with Chromecast and AirPlay built-in for further personal entertainment.
There are two bedrooms (one with a king size bed and the other with two single beds) and two bathrooms (one full bathroom with a bath tub shower and a guest bathroom)
Please note the following:
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.','Guests have access to the entire apartment.','-Cafés and restaurants are along Ankara street which is about a 10 minute walk from the complex.
- Banks and other services are also within walking distance (inside Sun City Mall)
- Sun City Mall (banks and shopping) and Cairo Complex (for dining options) are within a 5 minute walking distance.
- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive
- New Cairo is a 15 min drive
- Cairo International Airport is a 5 min drive.','We provide concierge services that include airport transfers and private day tours.
All places are reachable by car, Uber app and Careem app but if you wish to take a walk it''s takes no more than 5 minutes to reach any of the services around.','Please note the following:
-PLEASE NOTE: Check-in time is at 3:00 PM, and our team is unavailable between 1:00 AM and 10:00 AM.
-  20% discount applied on long stay starting from 1month.
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.',NULL::text[]),
(93034,'This spacious 2 bedroom apartment is perfect for families and business travelers.','This spacious 2 bedroom apartment is perfect for families and business travelers.

The 2 bedroom apartment includes a spacious reception area with a combined living that includes a bright outdoor balcony.  There is a fully equipped kitchen, cooking utensils and a Nespresso coffee machine. The living room is furnished with a sofa set along with a 55 inch smart TV with AirPlay built-in for further personal entertainment. There is full bathrooms one of which is equipped with a shower.
The first bedroom includes a king size bed & along with a spacious walk in dressing room.
The second bedroom includes two single beds.

Please note the following:
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.','Guests have access to the entire apartment.','The neighborhood is peaceful, upscale and safe.

- Cairo International Airport is a 10 min drive.
- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive','We provide concierge services that include airport transfers and private day tours.','Please note the following:
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.',NULL::text[]),
(93035,'This bright 3 bedroom apartment is perfect for families and business travelers.','This bright 3 bedroom apartment is perfect for families and business travelers.

The 3 bedroom apartment includes a spacious reception area with a combined living that includes a bright outdoor balcony.  There is a fully equipped kitchen, cooking utensils and a Nespresso coffee machine. The living room is furnished with a sofa set along with a 65 inch smart TV with AirPlay built-in for further personal entertainment. There are two full bathrooms and one guests bath.
The first bedroom includes a king size bed & along with a spacious walk in dressing room.
The second bedroom includes one queen size bed, and the third bedroom includes one double bed.
Please note the following:
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.','Guests have access to the entire apartment.','The neighborhood is peaceful, upscale and safe. Cairo Festival City Mall - considered to be the best mall in New Cairo,  is a 2 minute drive from the apartment.
- Cairo International Airport is a 10 min drive.
- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive','We provide concierge services that include airport transfers and private day tours.','Please note the following:
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.',NULL::text[]),
(93036,'This elegant 3 bedroom apartment is perfect for Families & business travelers.','This elegant 3 bedroom apartment is perfect for Families & business travelers.
The 3 bedroom apartment includes a spacious reception area with a combined living that includes a bright outdoor balcony.  There is a fully equipped kitchen, cooking utensils and a Nespresso coffee machine. The living room is furnished with a sofa set along with a 55 inch smart TV with AirPlay built-in for further personal entertainment. There is full bathrooms which is equipped with a bath tub & one guest bath.
The first bedroom includes a king size bed & along with a spacious wardrobe.
The second bedroom includes one queen size bed, and the third bedroom includes one single bed.','Guests have access to the entire apartment.','The neighborhood is full of life with plenty of street food options (the apartment is quite and peaceful though)

- Banks and other services are also within walking distance.
- Cairo Complex is within 20min walking distance and is packed with hangouts.
- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive
- New Cairo is a 15 min drive
- Cairo International Airport is a 15 min drive.','We provide concierge services that include airport transfers and private day tours.

All places are reachable by car, Uber app and Careem app but if you wish to take a walk it''s takes no more than 5 minutes to reach any of the services around.','Please note the following:
- Smoking is only allowed outside in the balcony (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.',NULL::text[]),
(93037,'The apartment features a king size comfortable bed Enjoy the two stunning gardens right in front of the apartment.','The apartment features a king size comfortable bed Enjoy the two stunning gardens right in front of the apartment, perfect for relaxing, taking in the view, or staying active with your favorite outdoor workouts. It also features a fully loaded kitchenette, microwave, a stove top with cooking utensils, a kettle and a Nespresso coffee machine. Additionally, guests can enjoy a 60inch smart TV for further personal entertainment.

Please note the following:
- Smoking is only allowed in the balcony or outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.','Guests have access to the entire apartment apart from the one locked unused room.','The neighborhood is peaceful, upscale and safe. Cairo Festival City Mall - considered to be the best mall in New Cairo,  is a 10 minute drive from the apartment.
- Cairo International Airport is a 20 min drive.
- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive','We provide concierge services that include airport transfers and private day tours.','Please note the following:
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.',NULL::text[]),
(93038,'Experience the perfect blend of comfort and convenience in this stylish 2-bedroom apartment located on Street 233 in Degla, Maadi—one of Cairo’s most charming and cosmopolitan neighborhoods. Ideal for tourists, remote workers, and families, this apartment offers a peaceful retreat with easy access to top attractions and amenities.','Apartment Highlights:
	•	Spacious Living Room with a cozy sofa, smart TV (Netflix, YouTube, more) and high-speed Wi-Fi—perfect for relaxing or working remotely.
	•	Fully Equipped Kitchen featuring a Nespresso coffee machine, kettle, stove, fridge, and full set of cooking utensils and cookware—ideal for short or long stays.
	•	Bedroom 1: Large king-sized bed, ample storage, and a private en-suite bathroom.
	•	Bedroom 2: Two comfortable twin beds, perfect for kids or friends.
	•	2 Full Bathrooms with modern fixtures and a high-capacity water heater—no hot water shortages, unlike many Cairo apartments.
	•	Air Conditioning in every room for year-round comfort.

Whether you’re visiting Cairo for business or pleasure, this apartment combines modern convenience with homey touches to make your stay unforgettable','Guests have access to the entire apartment.','Local Attractions & Experiences:
	•	Road 9: Maadi’s iconic street lined with cafés, boutiques, and vibrant nightlife.
	•	Wadi Degla Protectorate: A natural reserve ideal for hiking and outdoor activities.
	•	Maadi Island: A serene spot along the Nile, perfect for walking and cycling.
	•	Al-Kotob Khan Bookstore: A cultural hub offering books, lectures, and workshops.
	•	Alkemia Boutique: Features handcrafted jewelry and pottery-inspired pendants. ￼

 Easy Access to Cairo’s Top Attractions:

Degla is just a 20-minute drive from downtown Cairo, making it easy to explore:
	•	Egyptian Museum: Home to a vast collection of ancient artifacts.
	•	Khan el-Khalili Bazaar: A historic market offering traditional crafts and souvenirs.
	•	Coptic Cairo: Explore ancient churches, mosques, and synagogues.
	•	Felucca Rides on the Nile: Experience a relaxing boat ride with stunning city views. ￼

Whether you’re exploring the pyramids or working remotely, this peaceful Maadi apartment offers the perfect base to experience Cairo’s rich history and vibrant culture.','All places are reachable by car and Uber but if you want take a walk it''s not going to take you more than 5 minutes to reach any of the services around.','Please note that additional unreported guests are not allowed to access or enter the property.',NULL::text[]),
(93039,'##Space This deep red studio is perfect for small families and business travelers. The studio features a queen size comfortable bed with a work...','This deep red studio is perfect for small families and business travelers.  The studio features a queen size comfortable bed with a working desk. It also features a fully loaded kitchenette, microwave, a stove top with cooking utensils, a kettle and a Nespresso coffee machine. Additionally, guests can enjoy a 55 inch smart TV for further personal entertainment.','Guests have access to the entire apartment.','The neighborhood is full of life with plenty of street food options (the apartment is quite and peaceful though)

- Banks and other services are also within walking distance.

- Cairo Complex is within 15 min walking distance and is packed with hangouts.
- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive
- New Cairo is a 15 min drive
- Cairo International Airport is a 5 min drive.','We provide concierge services that include airport transfers and private day tours.

All places are reachable by car, Uber app and Careem app but if you wish to take a walk it''s takes no more than 5 minutes to reach any of the services around.','Please note the following:
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.

ADDITIONAL CLEANING:
-If you require cleaning during your stay or linen and towel changes, this can be provided at an extra cost. Please contact us to book the service and request quotes.',NULL::text[]),
(93040,'This spacious 2 bedroom apartment is perfect for families and business travelers.','The 2 bedroom apartment includes a spacious reception area with a combined living that includes a bright outdoor balcony.  There is a fully equipped kitchen, cooking utensils and a Nespresso coffee machine. The living room is furnished with a sofa set along with a 55 inch smart TV with AirPlay built-in for further personal entertainment. There is full bathrooms one of which is equipped with a shower.
The first bedroom includes a king size bed attach with a full bathroom.
The second bedroom includes two single beds.','Guests have access to the entire apartment.','The neighborhood is peaceful, upscale and safe.
 - Cairo International Airport is a 10 min drive.
- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive','We provide concierge services that include airport transfers and private day tours.','Please note the following:
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.',NULL::text[]),
(93041,'This 1 bedroom Apt. is perfect for small families and business travelers, with time relaxing offering  private jacuzzi in bedroom for exceptional experience,','This 1 bedroom Apt. is perfect for small families and business travelers, with time relaxing offering  private jacuzzi in bedroom for exceptional experience, while watching TV, all at once. The Apt. features a 1 queen size comfortable bed with a sofa bed. It also features a fully loaded kitchenette, microwave, a stove top with cooking utensils, a kettle and a Nespresso coffee machine. Additionally, guests can enjoy a 55 inch smart TV for further personal entertainment at the bedroom and a 55 inch smart TV at the dining corner.','Guests have access to the entire apartment.','The neighborhood is full of life with plenty of street food options (the apartment is quite and peaceful though)

- Banks and other services are also within walking distance.
- Cairo Complex is within 15 min walking distance and is packed with hangouts.
- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive
- New Cairo is a 15 min drive
- Cairo International Airport is a 5 min drive.','We provide concierge services that include airport transfers and private day tours.','Please note the following:
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.',NULL::text[]),
(93042,'This 2 bedroom Apt. is perfect for families and business travelers, with time relaxing offering  private jacuzzi in bedroom for exceptional experience,','This 2 bedroom Apt. is perfect for families and business travelers, with time relaxing offering  private jacuzzi in bedroom for exceptional experience, while watching TV, all at once. The Apt. features 2 bedroom one with a king size bed while the other has a  queen size comfortable bed, and an amazing living room with a sofa bed. It also features a fully loaded kitchenette, microwave, a stove top with cooking utensils, a kettle and a Nespresso coffee machine. Additionally, guests can enjoy a 55 inch smart TV for further personal entertainment at the bedroom and a 55 inch smart TV at the dining corner.','Guests have access to the entire apartment.','The neighborhood is full of life with plenty of street food options (the apartment is quite and peaceful though)
- Banks and other services are also within walking distance.
- Cairo Complex is within 15 min walking distance and is packed with hangouts.
- Giza Pyramids is a 50 min drive
- Downtown Cairo is a 30 min drive
- New Cairo is a 15 min drive
- Cairo International Airport is a 5 min drive.','We provide concierge services that include airport transfers and private day tours.','Please note the following:
- Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors)
- Visitors are not allowed, only confirmed guests will be granted entry.
- Free of charge street parking is available.',NULL::text[]),
(93043,'Welcome to your cozy home-away-from-home in the heart of Cairo! This stylish 2-bedroom apartment is perfectly located just 5 minutes from Cairo International Airport and a short stroll to City Centre Almaza, one of the city’s premier shopping and entertainment hubs.','This fully private and cozy 2-bedroom apartment is perfect for a relaxing getaway or an extended stay — designed with comfort and ease in mind.

Inside, you’ll find:
✔️Two inviting bedrooms with fresh linens and soft towels
✔️A modern bathroom complete with a hair dryer
✔️A fully equipped kitchen featuring an oven, microwave, and all cooking essentials
✔️A washing machine — ideal for longer stays
✔️Quiet hours observed to ensure a peaceful night’s rest

Whether you’re here for a quick layover or a longer adventure, this apartment offers the perfect blend of convenience, comfort, and local charm.','You’ll have the entire place to yourself—no shared spaces, just your own slice of serenity.','✔️ Just 5–7 minutes’ drive from Cairo International Airport, one of the city’s most convenient locations
✔️ Safe and quiet residential area with wide streets and a welcoming local atmosphere (walkable within minutes)
✔️ Supermarkets, cafés, restaurants, banks, and pharmacies within 5–10 minutes’ walk
✔️ City Stars Mall reachable in about 10 minutes by car for shopping, dining, and entertainment
✔️ Heliopolis district only 10–15 minutes’ drive, offering vibrant cafés and cultural spots
✔️ New Cairo accessible in 20–25 minutes by car, with upscale restaurants and malls
✔️ Downtown Cairo about 30–35 minutes’ drive, home to museums, historic landmarks, and Nile views
✔️ Ideal for short & extended stays, business trips, and transit travelers seeking comfort and convenience','✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.

⚠️ Parking is not provided. Guests may use nearby street parking or local paid lots, subject to availability.
Please note this is not private or guaranteed by us','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.',NULL::text[]),
(93044,'Discover your modern retreat at New Cairo, Unwind in a spacious, open-plan living room. This apartment offers both convenience and comfort. The perfect base for short or Extended stays in Cairo.','This stylish and comfortable apartment is designed for both short and extended stays.

Inside, you’ll find:
✔️one bedrooms with a king-size bed.
✔️A full bathroom ensuite and a separate guest toilet.
✔️A spacious open-plan living room with exotic touches.
✔️A dining area for enjoying meals together.
✔️A kitchenette equipped with a Nespresso machine, kettle, hot plate, microwave, and cooking utensils.
✔️A 65-inch Smart TV with cable and streaming access.
✔️Reliable Wi-Fi for work or entertainment.
✔️Complimentary bottled water, and two coffee capsules.','You’ll have the entire place to yourself—no shared spaces, just your own slice of serenity.','✔️Cairo Festival City Mall - considered to be the best mall in New Cairo,  is a 15 minute drive from the apartment.
✔️Cairo International Airport is a 20 min drive.
✔️Giza Pyramids is a 50 min drive
✔️Downtown Cairo is a 30 min drive','✔️ Private Services: We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
✔️ Free of charge parking is available.','✔️ Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors).
✔️ Visitors are not allowed, only confirmed guests will be granted entry.
✔️ All guests must provide a valid ID for registration with the building manager before or upon check-in.
✔️ You may be asked to show identification to access certain facilities in the building.
✔️ Free of charge parking is available.',NULL::text[]),
(93045,'Discover your modern retreat at the heart of Heliopolis, Unwind in a spacious, open-plan living room. This apartment offers both convenience and comfort.','This stylish and comfortable apartment is designed for both short and extended stays.

Inside, you’ll find:
✔️one bedrooms with a king-size bed.
✔️A full bathroom stocked with fresh face and body towels .
✔️A spacious open-plan living room with exotic touches.
✔️A dining area for enjoying meals together.
✔️A kitchenette equipped with a Nespresso machine, kettle, hot plate, microwave, and cooking utensils.
✔️A 65-inch Smart TV with cable and streaming access.
✔️Reliable Wi-Fi for work or entertainment.
✔️Complimentary bottled water, and two coffee capsules.','You’ll have the entire place to yourself—no shared spaces, just your own slice of serenity.','✔️Cairo International Airport is a 10 min drive.
✔️Giza Pyramids is a 50 min drive
✔️Downtown Cairo is a 30 min drive','✔️ Private Services: We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
✔️ Free of charge parking is available.','✔️ Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors).
✔️ Visitors are not allowed, only confirmed guests will be granted entry.
✔️ All guests must provide a valid ID for registration with the building manager before or upon check-in.
✔️ You may be asked to show identification to access certain facilities in the building.
✔️ Free of charge parking is available.',NULL::text[]),
(93046,'This stunning apartment sleeps 4 guests comfortably. This apartment offers both convenience and comfort.','This stylish and comfortable apartment is designed for both short and extended stays.

Inside, you’ll find:
✔️Two bedrooms one with a queen-size bed, while the other with punk bed.
✔️A full bathroom stocked with fresh face and body towels .
✔️A spacious open-plan living room with exotic touches.
✔️A dining area for enjoying meals together.
✔️A kitchenette equipped with a Nespresso machine, kettle, hot plate, microwave, and cooking utensils.
✔️A 55-inch Smart TV with cable and streaming access.
✔️Reliable Wi-Fi for work or entertainment.
✔️Complimentary bottled water, and two coffee capsules.','You’ll have the entire place to yourself—no shared spaces, just your own slice of serenity.','✔️Cairo International Airport is a 10 min drive.
✔️Giza Pyramids is a 50 min drive
✔️Downtown Cairo is a 30 min drive','✔️ Private Services: We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
✔️ Free of charge parking is available.','✔️ Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors).
✔️ Visitors are not allowed, only confirmed guests will be granted entry.
✔️ All guests must provide a valid ID for registration with the building manager before or upon check-in.
✔️ You may be asked to show identification to access certain facilities in the building.
✔️ Free of charge parking is available.',NULL::text[]),
(93047,'Welcome to The Classic Contemporary Apartment — where calm meets character in the heart of Cairo.','This bright apartment is designed for relaxation and comfort  the perfect retreat after a day spent exploring city that never sleeps.
Inside, you’ll find:

✔️  Two bedrooms, one king-sized bed while the other has 2 single beds with hotel-quality Egyptian cotton linens
✔️ A full bathroom and guest bath stocked with fresh face and body towels
✔️ A fully loaded kitchen for meal preparation
✔️ Free Wi-Fi, and a 55 inch smart TV for further personal entertainment.
✔️Dining area with dining table
✔️ A Nespresso machine
✔️ Complimentary bottled water and two coffee capsules.','✔️Guests will have full private access to the Apartment and all of its amenities during their stay.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','✔️ Safety & Accessibility
  the location provides unbeatable access to Tahrir Square and Egyptian Museum.
✔️ Authentic Local Surroundings
-5 minute walk to Cairo Downtown.
- Cairo International Airport is a 35 minute drive.
- Giza Pyramids is a 35 minute drive.','✔️ Location: Just a short walk to the Tahrir square and Egyptian Museum — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','✔️Smoking is only allowed in the balcony or outside the building (a fine of $100 will be imposed when smoking indoors)
✔️Visitors are not allowed, only confirmed guests will be granted entry.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.',NULL::text[]),
(93048,'Discover your modern retreat at New Cairo, This apartment offers both convenience and comfort. The perfect base for short or Extended stays in Cairo.','This stylish and comfortable apartment is designed for both short and extended stays.

Inside, you’ll find:
✔️Two bedrooms one with a king-size bed while other with two single beds.
✔️Two full bathrooms ensuite and a separate full bath.
✔️A spacious open-plan living room with exotic touches.
✔️A dining area for enjoying meals together.
✔️A full equipped kitchen with a Nespresso machine, kettle, hot plate, microwave, and cooking utensils.
✔️A 55-inch Smart TV with cable and streaming access.
✔️Reliable Wi-Fi for work or entertainment.
✔️Complimentary bottled water, and two coffee capsules.','You’ll have the entire place to yourself—no shared spaces, just your own slice of serenity.','✔️Cairo Festival City Mall - considered to be the best mall in New Cairo,  is a 15 minute drive from the apartment.
✔️Cairo International Airport is a 20 min drive.
✔️Giza Pyramids is a 50 min drive
✔️Downtown Cairo is a 30 min drive','✔️ Private Services: We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
✔️ Free of charge parking is available.','✔️ Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors).
✔️ Visitors are not allowed, only confirmed guests will be granted entry.
✔️ All guests must provide a valid ID for registration with the building manager before or upon check-in.
✔️ You may be asked to show identification to access certain facilities in the building.
✔️ Free of charge parking is available.',NULL::text[]),
(93049,'This stylish 2-bedroom apartment is perfectly located just 5 minutes from Cairo International Airport.','This fully private and cozy 2-bedroom apartment is perfect for a relaxing getaway or an extended stay — designed with comfort and ease in mind.

Inside, you’ll find:
✔️Two inviting bedrooms with fresh linens and soft towels
✔️A modern bathroom complete with a hair dryer
✔️A fully equipped kitchen featuring an oven, microwave, and all cooking essentials
✔️A washing machine — ideal for longer stays
✔️A spacious open-plan living room with modern touches.
✔️A dining area for enjoying meals together.
✔️A 55-inch Smart TV with cable and streaming access.
✔️Reliable Wi-Fi for work or entertainment.
✔️Complimentary bottled water, and two coffee capsules.
✔️Quiet hours observed to ensure a peaceful night’s rest.

Whether you’re here for a quick layover or a longer adventure, this apartment offers the perfect blend of convenience, comfort, and local charm.','You’ll have the entire place to yourself—no shared spaces, just your own slice of serenity.','✔️ Just 5 minutes’ drive from Cairo International Airport, one of the city’s most convenient locations
✔️ Safe and quiet residential area with wide streets and a welcoming local atmosphere (walkable within minutes)
✔️ Supermarkets, cafés, restaurants, banks, and pharmacies within 5–10 minutes’ walk
✔️ Heliopolis district only 10 minutes’ drive, offering vibrant cafés and cultural spots
✔️ New Cairo accessible in 20–25 minutes by car, with upscale restaurants and malls
✔️ Downtown Cairo about 30–35 minutes’ drive, home to museums, historic landmarks, and Nile views
✔️ Ideal for short & extended stays, business trips, and transit travelers seeking comfort and convenience','✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.',NULL::text[]),
(93050,'Discover your modern retreat at New Cairo, This apartment offers both convenience and comfort. The perfect base for short or Extended stays in Cairo.','This stylish and comfortable apartment is designed for both short and extended stays.

Inside, you’ll find:
✔️Two bedrooms one with a queen-size bed while other with two single beds.
✔️A two full bathroom complete with a hair dryer.
✔️A spacious open-plan living room  with modern touches.
✔️A dining area for enjoying meals together.
✔️A full equipped kitchen with a Nespresso machine, kettle, hot plate, microwave, and cooking utensils.
✔️A 65-inch Smart TV with cable and streaming access.
✔️Reliable Wi-Fi for work or entertainment.
✔️Complimentary bottled water, and two coffee capsules.','You’ll have the entire place to yourself—no shared spaces, just your own slice of serenity.','✔️Cairo Festival City Mall - considered to be the best mall in New Cairo,  is a 15 minute drive from the apartment.
✔️Cairo International Airport is a 20 min drive.
✔️Giza Pyramids is a 50 min drive
✔️Downtown Cairo is a 30 min drive','✔️ Private Services: We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
✔️ Free of charge parking is available.','✔️ Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors).
✔️ Visitors are not allowed, only confirmed guests will be granted entry.
✔️ All guests must provide a valid ID for registration with the building manager before or upon check-in.
✔️ You may be asked to show identification to access certain facilities in the building.
✔️ Free of charge parking is available.',NULL::text[]),
(93051,'This posh one bedroom apartment is perfect for couples & business travelers with an amazing rooftop.','This stylish and comfortable apartment is designed for both short and extended stays.

Inside, you’ll find:
✔️one bedrooms with a queen-size bed.
✔️A full bathroom stocked with fresh face and body towels .
✔️A spacious open-plan living room with modern touches.
✔️A dining area for enjoying meals together.
✔️A full equipped kitchen with a Nespresso machine, kettle, hot plate, microwave, and cooking utensils.
✔️A 55-inch Smart TV with cable and streaming access.
✔️Reliable Wi-Fi for work or entertainment.
✔️Complimentary bottled water, and two coffee capsules.','You’ll have the entire place to yourself—no shared spaces, just your own slice of serenity.','✔️Cairo Festival City Mall - considered to be the best mall in New Cairo,  is a 15 minute drive from the apartment.
✔️Cairo International Airport is a 20 min drive.
✔️Giza Pyramids is a 50 min drive
✔️Downtown Cairo is a 30 min drive','✔️ Private Services: We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
✔️ Free of charge parking is available.','✔️ Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors).
✔️ Visitors are not allowed, only confirmed guests will be granted entry.
✔️ All guests must provide a valid ID for registration with the building manager before or upon check-in.
✔️ You may be asked to show identification to access certain facilities in the building.
✔️ Free of charge parking is available.',NULL::text[]),
(93052,'This stylish 2-bedroom apartment is perfectly located just 5 minutes from Cairo International Airport.','This fully private and cozy 2-bedroom apartment is perfect for a relaxing getaway or an extended stay — designed with comfort and ease in mind.

Inside, you’ll find:
✔️Two inviting bedrooms with fresh linens and soft towels
✔️A modern bathroom complete with a hair dryer
✔️A fully equipped kitchen featuring an oven, microwave, and all cooking essentials
✔️A washing machine — ideal for longer stays
✔️A spacious open-plan living room with modern touches.
✔️A dining area for enjoying meals together.
✔️A 55-inch Smart TV with cable and streaming access.
✔️Reliable Wi-Fi for work or entertainment.
✔️Complimentary bottled water, and two coffee capsules.
✔️Quiet hours observed to ensure a peaceful night’s rest.

Whether you’re here for a quick layover or a longer adventure, this apartment offers the perfect blend of convenience, comfort, and local charm.','You’ll have the entire place to yourself—no shared spaces, just your own slice of serenity.','✔️ Just 5 minutes’ drive from Cairo International Airport, one of the city’s most convenient locations
✔️ Safe and quiet residential area with wide streets and a welcoming local atmosphere (walkable within minutes)
✔️ Supermarkets, cafés, restaurants, banks, and pharmacies within 5–10 minutes’ walk
✔️ Heliopolis district only 10 minutes’ drive, offering vibrant cafés and cultural spots
✔️ New Cairo accessible in 20–25 minutes by car, with upscale restaurants and malls
✔️ Downtown Cairo about 30–35 minutes’ drive, home to museums, historic landmarks, and Nile views
✔️ Ideal for short & extended stays, business trips, and transit travelers seeking comfort and convenience','✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.',NULL::text[]),
(93053,'Discover your modern retreat at the heart of Nasr City, This apartment offers both convenience and comfort. The perfect base for short or Extended stays in Cairo.','This stylish and comfortable apartment is designed for both short and extended stays.

Inside, you’ll find:
✔️Two bedrooms one with a king-size bed while other with two single beds.
✔️Two full bathrooms ensuite and a separate full bath.
✔️A spacious open-plan living room with modern touches.
✔️A dining area for enjoying meals together.
✔️A full equipped kitchen with a Nespresso machine, kettle, hot plate, microwave, and cooking utensils.
✔️A 55-inch Smart TV with cable and streaming access.
✔️Reliable Wi-Fi for work or entertainment.
✔️Complimentary bottled water, and two coffee capsules.','You’ll have the entire place to yourself—no shared spaces, just your own slice of serenity.','✔️One of the best shopping Streets in Cairo.
✔️Cairo Festival City Mall - considered to be the best mall in New Cairo,  is a 20 minute drive from the apartment.
✔️Cairo International Airport is a 20 min drive.
✔️Giza Pyramids is a 50 min drive
✔️Downtown Cairo is a 30 min drive','✔️ Private Services: We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
✔️ Free of charge parking is available.','✔️ Smoking is only allowed outside the building (a fine of $100 will be imposed when smoking indoors).
✔️ Visitors are not allowed, only confirmed guests will be granted entry.
✔️ All guests must provide a valid ID for registration with the building manager before or upon check-in.
✔️ You may be asked to show identification to access certain facilities in the building.
✔️ Free of charge parking is available.',NULL::text[]),
(93054,'This Panoramic 2 bedroom designer apartment is located inside a very unique gated complex, 5 minutes to Cairo International Airport.','This fully private and cozy 2-bedroom apartment is perfect for a relaxing getaway or an extended stay — designed with comfort and ease in mind.

Inside, you’ll find:
✔️Two inviting bedrooms with fresh linens and soft towels
✔️A modern bathroom complete with a hair dryer and guest bath
✔️A fully equipped kitchen featuring an oven, microwave, and all cooking essentials
✔️A washing machine — ideal for longer stays
✔️A spacious open-plan living room with modern touches.
✔️A dining area for enjoying meals together.
✔️A 55-inch Smart TV with cable and streaming access.
✔️Reliable Wi-Fi for work or entertainment.
✔️Complimentary bottled water, and two coffee capsules.
✔️Quiet hours observed to ensure a peaceful night’s rest.

Whether you’re here for a quick layover or a longer adventure, this apartment offers the perfect blend of convenience, comfort, and local charm.','You’ll have the entire place to yourself—no shared spaces, just your own slice of serenity.','✔️ Just 5 minutes’ drive from Cairo International Airport, one of the city’s most convenient locations
✔️ Safe and quiet residential area with wide streets and a welcoming local atmosphere (walkable within minutes)
✔️ Supermarkets, cafés, restaurants, banks, and pharmacies within 5–10 minutes’ walk
✔️ Heliopolis district only 10 minutes’ drive, offering vibrant cafés and cultural spots
✔️ New Cairo accessible in 20–25 minutes by car, with upscale restaurants and malls
✔️ Downtown Cairo about 30–35 minutes’ drive, home to museums, historic landmarks, and Nile views
✔️ Ideal for short & extended stays, business trips, and transit travelers seeking comfort and convenience','✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services: We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.',NULL::text[]),
(93055,'This  2 bedroom designer apartment is located in Sheraton area , 5 minutes to Cairo International Airport.','This fully private and cozy 2-bedroom apartment is perfect for a relaxing getaway or an extended stay — designed with comfort and ease in mind.

Inside, you’ll find:
✔️Two inviting bedrooms with fresh linens and soft towels
✔️A modern bathroom complete with a hair dryer and guest bath
✔️A fully equipped kitchen featuring an oven, microwave, and all cooking essentials
✔️A washing machine — ideal for longer stays
✔️A spacious open-plan living room with modern touches.
✔️A dining area for enjoying meals together.
✔️A 55-inch Smart TV with cable and streaming access.
✔️Reliable Wi-Fi for work or entertainment.
✔️Complimentary bottled water, and two coffee capsules.
✔️Quiet hours observed to ensure a peaceful night’s rest.

Whether you’re here for a quick layover or a longer adventure, this apartment offers the perfect blend of convenience, comfort, and local charm.','You’ll have the entire place to yourself—no shared spaces, just your own slice of serenity.','✔️ Just 5 minutes’ drive from Cairo International Airport, one of the city’s most convenient locations
✔️ Safe and quiet residential area with wide streets and a welcoming local atmosphere (walkable within minutes)
✔️ Supermarkets, cafés, restaurants, banks, and pharmacies within 5–10 minutes’ walk
✔️ Heliopolis district only 10 minutes’ drive, offering vibrant cafés and cultural spots
✔️ New Cairo accessible in 20–25 minutes by car, with upscale restaurants and malls
✔️ Downtown Cairo about 30–35 minutes’ drive, home to museums, historic landmarks, and Nile views
✔️ Ideal for short & extended stays, business trips, and transit travelers seeking comfort and convenience','✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services: We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.',NULL::text[]),
(93056,'Welcome to our studio where Historic Charm Meets Modern Living, our boutique studios offer a peaceful urban sanctuary amidst the city’s electric energy. Step outside to discover stunning Belle Époque architecture, historic cafes, and hidden art galleries—all just minutes from your doorstep.','This bright and cozy studio is designed for relaxation and comfort  the perfect retreat after a day spent exploring the historic city of Cairo.
Inside, you’ll find:

✔️ One queen-sized bed with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A compact kitchenette for light meal preparation
✔️  Free Wi-Fi, and a 55 inch smart TV for further personal entertainment.
✔️ A Nespresso machine
✔️ Complimentary bottled water and two coffee capsules','✔️Guests will have full private access to the Apartment and all of its amenities during their stay.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','✔️ Safety & Accessibility
  the location provides unbeatable access to Tahrir Square and Egyptian Museum.
✔️ Authentic Local Surroundings
-5 minute walk to Cairo Downtown.
- Cairo International Airport is a 35 minute drive.
- Giza Pyramids is a 35 minute drive.','✔️ Location: Just a short walk to the Tahrir square and Egyptian Museum — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','✔️Smoking is only allowed in the balcony or outside the building (a fine of $100 will be imposed when smoking indoors)
✔️Visitors are not allowed, only confirmed guests will be granted entry.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.
✔️Downtown Cairo is a historic, bustling hub that truly never sleeps. Because of its central location and lively energy, the area can be quite noisy throughout the day and late into the night. You will likely hear street music, bustling crowds, and Cairo''s famous symphony of car horns.',NULL::text[]),
(93057,'Welcome to our studio where Historic Charm Meets Modern Living, our boutique studios offer a peaceful urban sanctuary amidst the city’s electric energy. Step outside to discover stunning Belle Époque architecture, historic cafes, and hidden art galleries—all just minutes from your doorstep.','This bright and cozy studio is designed for relaxation and comfort  the perfect retreat after a day spent exploring the historic city of Cairo.
Inside, you’ll find:

✔️ One queen-sized bed with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A compact kitchenette for light meal preparation
✔️  Free Wi-Fi, and a 55 inch smart TV for further personal entertainment.
✔️ A Nespresso machine
✔️ Complimentary bottled water and two coffee capsules','✔️Guests will have full private access to the Apartment and all of its amenities during their stay.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','✔️ Safety & Accessibility
  the location provides unbeatable access to Tahrir Square and Egyptian Museum.
✔️ Authentic Local Surroundings
-5 minute walk to Cairo Downtown.
- Cairo International Airport is a 35 minute drive.
- Giza Pyramids is a 35 minute drive.','✔️ Location: Just a short walk to the Tahrir square and Egyptian Museum — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','✔️Smoking is only allowed in the balcony or outside the building (a fine of $100 will be imposed when smoking indoors)
✔️Visitors are not allowed, only confirmed guests will be granted entry.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.
✔️Downtown Cairo is a historic, bustling hub that truly never sleeps. Because of its central location and lively energy, the area can be quite noisy throughout the day and late into the night. You will likely hear street music, bustling crowds, and Cairo''s famous symphony of car horns.',NULL::text[]),
(93058,'This fancy 1 bedroom apartment is located in Gouna''s only beachfront community with a 24/7 free pool and beach access and is managed by Xuru Stays','This earthy 1 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with a 24/7 free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The apartment comes with an open plan fully equipped kitchen, a full bathroom and a living room with a large sofa that can sleep an additional guest.

It also features a 65 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & small families.

The styling is made with a lavish yet minimal approach to follow the color schemes seen across the beautiful city of El Gouna.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Marina El Gouna. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Tv','Air Conditioning','Bed Linens/Towels','Carbon monoxide detector','Cleaning and disinfection','Contactless check-in and check-out','Essentials','Fire extinguisher','First aid kit','Full Equipped Kitchen','Hair Dryer','Hand sanitizer','Hangers','Heating','Hot water','Ironing equipment','Kids Friendly','Laptop Friendly Workspace','Parking Included','Satellite Or Cable','Self Check-in','Smoke detector','Washing Machine','WiFi Internet','Bottled Water','Cleaning products','Freezer','Fridge','Ice Maker','Kettle','Kitchenette','Microwave','Oven','Stove','Wine glasses','Accessible car park','Secured parking','Shared Parking','Street parking','24 Hour Check-in','Central Heating','Extra pillows and blankets','Professionally cleaned','Streaming service','Kids Pool','Gated Community','Gated property','Locked bedroom(s)','Smoking Forbidden','Staff wear protective equipment','Energy-efficient devices','No single-use plastic ','No single-use toiletries','Sustainable materials','Luxury linen','Canoe','Cycling','Diving','Golf','Hiking','Horseback riding','Kayaking','Parasailing','Snorkelling','Swimming','Water sports','Beach','Beach front','Work Desk','Cleaning before checkout','Long Term Rentals Available','Suitable For Children (2+ years old)','Suitable For Infants (under 2 years)','Outdoor pool','Shared Pool','Bird watching','Duty free','Marina','Spa nearby','Coffee Maker']::text[]),
(93059,'This Elegant 2 bedroom apartment is located in Gouna''s only beachfront community with a 24/7 free pool and beach access and is managed by Xuru Stays','This epic 2 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with a 24/7 free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The 2 bed apartment comes with an open plan fully equipped kitchen, 2 full bathrooms with 1 ensuite and a living room with a large sofa bed that can sleep 2 additional guests, not to mention a beautiful large terrance overlooking the pool.

It also features a 65 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & families.

The styling is made with a minimal boho approach to follow the color schemes seen across the beautiful city of El Gouna.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Abu Tig Marina. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Air Conditioning','Bed Linens/Towels','Carbon monoxide detector','Cleaning and disinfection','Contactless check-in and check-out','Essentials','Fire extinguisher','Full Equipped Kitchen','Hair Dryer','Hand sanitizer','Hangers','Heating','Hot water','Ironing equipment','Kids Friendly','Laptop Friendly Workspace','Parking Included','Satellite Or Cable','Self Check-in','Smoke detector','Tv','Washing Machine','WiFi Internet','Bottled Water','Cleaning products','Coffee Maker','Freezer','Fridge','Ice Maker','Kettle','Kitchenette','Microwave','Oven','Stove','Wine glasses','Accessible car park','Balcony','Secured parking','Shared Parking','24 Hour Check-in','Extra pillows and blankets','Professionally cleaned','Streaming service','Gated Community','Gated property','Locked bedroom(s)','Security System','Smoking Forbidden','Social distancing','Staff wear protective equipment','Energy-efficient devices','No single-use plastic ','No single-use toiletries','Paperless / recycled paper','Sustainability projects support ','Sustainable materials','Towels changed upon request','Luxury linen','Boat','Canoe','Diving','Golf','Hiking','Kayaking','Paddle','Sailing','Snorkelling','Swimming','Tennis Court','Beach','Work Desk','Cleaning before checkout','Long Term Rentals Available','Suitable For Children (2+ years old)','Suitable For Infants (under 2 years)','Outdoor pool','Shared Pool','Bird watching','Boating','Duty free','Marina','Spa nearby','Terrace','Kids Pool','Beach front']::text[]),
(93060,'This timeless 1 bedroom apartment is located in Gouna''s only beachfront community with a 24/7 free pool and beach access and is managed by Xuru Stays','This beautiful 1 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with a 24/7 free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The apartment features a sunny balcony from which the beach is visible. It also comes with an open plan fully equipped kitchen, a full bathroom and a living room with two sofa beds that are perfect for two additional guests!

It also features a 50 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle, microwave and a fully functional stove and oven. The apartment is great for couples & small families.

The styling of the apartment is meant to be simple, fresh and bright to ensure guests have a calming experience.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Marina El Gouna. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Air Conditioning','Bed Linens/Towels','Carbon monoxide detector','Cleaning and disinfection','Contactless check-in and check-out','Essentials','Full Equipped Kitchen','Hair Dryer','Hand sanitizer','Hangers','Heating','Hot water','Ironing equipment','Kids Friendly','Laptop Friendly Workspace','Parking Included','Satellite Or Cable','Self Check-in','Smoke detector','Tv','Washing Machine','WiFi Internet','Bottled Water','Freezer','Fridge','Ice Maker','Kettle','Kitchenette','Microwave','Oven','Stove','Wine glasses','Balcony','Shared Parking','24 Hour Check-in','Extra pillows and blankets','Professionally cleaned','Wardrobe','Gated Community','Locked bedroom(s)','Smoking Forbidden','Luxury linen','Canoe','Golf','Paddle','Swimming','Water sports','Beach','Work Desk','Long Term Rentals Available','Suitable For Children (2+ years old)','Suitable For Infants (under 2 years)','Shared Pool','Coffee Maker','Terrace','Central Heating','Streaming service','Kids Pool','Gated property','Staff wear protective equipment','No single-use plastic ','No single-use toiletries','Paperless / recycled paper','Sustainable materials','Beach front','Bird watching','Duty free','Marina','Spa nearby']::text[]),
(93061,'This Boho Chic 1 bedroom apartment is located in Gouna''s only beachfront community with a 24/7 free pool and beach access and is managed by Xuru Stays','This Boho Chic 1 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with a 24/7 free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The apartment is on the ground floor overlooking the pool and features an open plan fully equipped kitchen, 2 full bathrooms and a living room with a large sofa bed that can sleep 2 additional guests.

It also features a 49 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & small families.

The styling of the apartment is tailored to give the guests a continued vibe of the already beautiful city of El Gouna.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Marina El Gouna. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Air Conditioning','Bed Linens/Towels','Carbon monoxide detector','Cleaning and disinfection','Contactless check-in and check-out','Essentials','Full Equipped Kitchen','Hair Dryer','Hangers','Heating','Hot water','Ironing equipment','Kids Friendly','Laptop Friendly Workspace','Parking Included','Satellite Or Cable','Self Check-in','Smoke detector','Tv','Washing Machine','WiFi Internet','Bottled Water','Cleaning products','Coffee Maker','Freezer','Fridge','Ice Maker','Kettle','Kitchenette','Microwave','Oven','Stove','Wine glasses','Accessible car park','Balcony','Garden','Patio','Private entrance','Secured parking','Shared Parking','24 Hour Check-in','Central Heating','Extra pillows and blankets','Professionally cleaned','Streaming service','Gated Community','Gated property','Locked bedroom(s)','Security System','Smoking Forbidden','Social distancing','Staff wear protective equipment','Energy-efficient devices','No single-use plastic ','No single-use toiletries','Paperless / recycled paper','Towels changed upon request','Luxury linen','Boat','Canoe','Cycling','Diving','Golf','Horseback riding','Kayaking','Snorkelling','Swimming','Tennis Court','Water sports','Beach','Beach front','Cleaning before checkout','Long Term Rentals Available','Suitable For Children (2+ years old)','Suitable For Infants (under 2 years)','Outdoor pool','Shared Pool','Boating','Marina']::text[]),
(93062,'This posh 3 bedroom apartment is located in Gouna''s only beachfront community with a 24/7 free pool and beach access and is managed by Xuru Stays','This posh & fancy 3 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with a 24/7 free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The apartment is on the 2nd floor overlooking the pool and features a private rooftop with a jacuzzi - perfect for sun bathing and enjoying a drink! It also features an open plan fully equipped kitchen, 2 full bathrooms and a living room.

There is a 55 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for groups & big families.

The elegant styling of the apartment, makes it one of a kind within its community.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Marina El Gouna. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Air Conditioning','Bed Linens/Towels','Carbon monoxide detector','Cleaning and disinfection','Contactless check-in and check-out','Essentials','Fire extinguisher','Full Equipped Kitchen','Hair Dryer','Hangers','Heating','Hot water','Ironing equipment','Kids Friendly','Laptop Friendly Workspace','Parking Included','Satellite Or Cable','Self Check-in','Smoke detector','Tv','Washing Machine','WiFi Internet','Bottled Water','Coffee Maker','Freezer','Fridge','Kettle','Kitchenette','Microwave','Oven','Stove','Wine glasses','Shared Parking','Terrace','Extra pillows and blankets','Professionally cleaned','Wardrobe','Gated Community','Locked bedroom(s)','Smoking Forbidden','Social distancing','Staff wear protective equipment','No single-use plastic ','No single-use toiletries','Paperless / recycled paper','Sustainable materials','Luxury linen','Golf','Horseback riding','Swimming','Tennis Court','Beach','Beach front','Cleaning before checkout','Long Term Rentals Available','Suitable For Children (2+ years old)','Suitable For Infants (under 2 years)','Outdoor pool','Shared Pool']::text[]),
(93063,'This colorful 1 bedroom apartment is located in Gouna''s only beachfront compound with a 24/7 free pool and beach access and is managed by Xuru Stays','This exotic and colorful 1 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with a 24/7 free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The apartment is on the ground floor and features an open plan fully equipped kitchen, 2 bathrooms (one ensuite) and a living room. There is a bright a cosy outdoor furnished terrace, perfect for your morning coffee or late night relaxation.

It also features a 55 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & small families.

The styling of the apartment is tailored to give the guests an exotic and happy vibe.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Marina El Gouna. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Air Conditioning','Bed Linens/Towels','Carbon monoxide detector','Cleaning and disinfection','Contactless check-in and check-out','Essentials','Fire extinguisher','Full Equipped Kitchen','Hair Dryer','Hangers','Heating','Hot water','Ironing equipment','Kids Friendly','Laptop Friendly Workspace','Parking Included','Satellite Or Cable','Self Check-in','Tv','Washing Machine','WiFi Internet','Bottled Water','Coffee Maker','Freezer','Fridge','Kettle','Microwave','Oven','Stove','Wine glasses','Terrace','24 Hour Check-in','Extra pillows and blankets','Professionally cleaned','Gated Community','Smoking Forbidden','Social distancing','Staff wear protective equipment','No single-use plastic ','No single-use toiletries','Luxury linen','Golf','Horseback riding','Swimming','Beach front','Long Term Rentals Available','Suitable For Children (2+ years old)','Suitable For Infants (under 2 years)','Shared Pool']::text[]),
(93064,'This peaceful waterfront 1 bedroom apartment is located in Gouna''s only beachfront compound with a 24/7 free pool and beach access and is managed by Xuru Stays','This chilled 1 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with a 24/7 free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The apartment is on the second floor with furnished roof top overlooking the beach & new Fanadir Marina and features an open plan fully equipped kitchen, 2 bathrooms (one ensuite) and a living room with a sofa bed that can sleep up to 2 additional guests.

It also features a 65 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & small families.

The styling of the apartment is tailored to give the guests a serene and calming vibe.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Marina El Gouna. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Air Conditioning','Bed Linens/Towels','Carbon monoxide detector','Cleaning and disinfection','Contactless check-in and check-out','Fire extinguisher','Full Equipped Kitchen','Hair Dryer','Hand sanitizer','Hangers','Heating','Hot water','Ironing equipment','Kids Friendly','Laptop Friendly Workspace','Satellite Or Cable','Self Check-in','Smoke detector','Tv','Washing Machine','WiFi Internet','Coffee Maker','Freezer','Fridge','Kettle','Microwave','Oven','Stove','Wine glasses','Balcony','Shared Parking','24 Hour Check-in','Professionally cleaned','Wardrobe','Gated Community','Gated property','Smoking Forbidden','Staff wear protective equipment','No single-use plastic ','No single-use toiletries','Luxury linen','Cleaning before checkout','Suitable For Children (2+ years old)','Suitable For Infants (under 2 years)','Shared Pool']::text[]),
(93065,'This contemporary 2 bedroom apartment is located in Gouna''s only beachfront community with a 24/7 free pool and beach access and is managed by Xuru Stays','This greatly located 2 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with a 24/7 free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The 2 bedroom apartment comes with an open plan fully equipped kitchen, 2 full ensuite bathrooms with 1 guest bathroom. It also features a living room with a large sofa that can sleep 1 additional guest, not to mention a beautiful large balcony overlooking the pool.

It also features a 65 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & families.

The styling is basic yet relaxing to ensure guests have a wonderful and serene experience.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Abu Tig Marina. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.

Please note that scheduled maintenance works on the external facades and garden terrace areas will take place in Mangroovy Cluster 7 from May 9 until May 13. During this period, technicians may require access to garden and terrace areas to complete the maintenance works. We appreciate your understanding and apologize for any inconvenience caused.',ARRAY['Air Conditioning','Bed Linens/Towels','Carbon monoxide detector','Cleaning and disinfection','Contactless check-in and check-out','Essentials','Full Equipped Kitchen','Hair Dryer','Hangers','Heating','Hot water','Ironing equipment','Kids Friendly','Satellite Or Cable','Self Check-in','Tv','Washing Machine','WiFi Internet','Coffee Maker','Freezer','Fridge','Kettle','Microwave','Oven','Stove','Wine glasses','Professionally cleaned','Wardrobe','Smoking Forbidden','Staff wear protective equipment','No single-use plastic ','No single-use toiletries','Luxury linen','Cleaning before checkout','Suitable For Children (2+ years old)','Suitable For Infants (under 2 years)','Shared Pool']::text[]),
(93066,'This minimal 1 bedroom apartment is located in Gouna''s popular Abu Tig Marina and is managed by Xuru Stays','This neat 1 bedroom apartment is located in Gouna''s Abu Tig Marina.

The apartment is on the third floor and features an open plan fully equipped kitchen, 1bathroom and a living room with a sofa bed at the bedroom that can sleep up to 2 additional guests.

It also features a 55 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & small families.

The apartment is very central, quiet and minimal, however it is fully equipped to comfortably accommodate guests.','Guests have access to the entire apartment','-Marina El Gouna is a central scene with lots of restaurants, bars and shops.
-''On Time'' supermarket is right in front of the residence towards the Marina.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna.','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Air Conditioning','Bed Linens/Towels','Carbon monoxide detector','Cleaning and disinfection','Contactless check-in and check-out','Essentials','Fire extinguisher','Full Equipped Kitchen','Hair Dryer','Hangers','Heating','Hot water','Ironing equipment','Kids Friendly','Parking Included','Satellite Or Cable','Self Check-in','Tv','Washing Machine','WiFi Internet','Cleaning products','Coffee Maker','Freezer','Fridge','Kettle','Microwave','Oven','Stove','Wine glasses','Balcony','Private entrance','24 Hour Check-in','Professionally cleaned','Wardrobe','Gated property','Smoking Forbidden','No single-use plastic ','No single-use toiletries','Luxury linen','Cleaning before checkout','Suitable For Children (2+ years old)','Suitable For Infants (under 2 years)']::text[]),
(93067,'This Elegant 2 bedroom apartment is located in Gouna''s only beachfront community with a 24/7 free pool and beach access and is managed by Xuru Stays','This secluded 2 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with a 24/7 free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The 2 bed apartment comes with an open plan fully equipped kitchen, 2 full bathrooms with 1 ensuite and a living room with a large sofa that can sleep 1 additional guest, not to mention a beautiful large terrance overlooking the pool.

It also features a 65 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & families.

The styling is made with a minimal boho approach to follow the color schemes seen across the beautiful city of El Gouna.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Abu Tig Marina. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Air Conditioning','Bed Linens/Towels','Cleaning and disinfection','Contactless check-in and check-out','Essentials','Fire extinguisher','Full Equipped Kitchen','Hair Dryer','Hangers','Heating','Hot water','Ironing equipment','Laptop Friendly Workspace','Parking Included','Satellite Or Cable','Self Check-in','Tv','Washing Machine','WiFi Internet','Bottled Water','Cleaning products','Coffee Maker','Dishwasher','Freezer','Fridge','Kettle','Kitchenette','Microwave','Oven','Stove','Wine glasses','Accessible car park','Balcony','Garden','Secured parking','Shared Parking','Street parking','Terrace','24 Hour Check-in','Wardrobe','Gated Community','Smoking Forbidden','No single-use plastic ','No single-use toiletries','Luxury linen','Beach','Cleaning before checkout','Suitable For Children (2+ years old)','Suitable For Infants (under 2 years)','Shared Pool']::text[]),
(93068,'This welcoming 1 bedroom apartment is located in Gouna''s only beachfront compound with free pool and beach access and is managed by Xuru Stays','This warm and welcoming 1 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The apartment is on the ground floor and features an open plan fully equipped kitchen, 2 bathrooms (one ensuite) and a living room. There is a bright a cosy outdoor furnished terrace, perfect for your morning coffee or late night relaxation.

It also features a 55 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & small families.

The styling of the apartment is tailored to give the guests a jazzy and happy vibe.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Marina El Gouna. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Zounii'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Heating','Freezer','Fridge','Full Equipped Kitchen','Hot water','Coffee Maker','Air Conditioning','Bed Linens/Towels','Gated Community','Shared Pool','Hair Dryer','Kettle','Kids Friendly','Microwave','Oven','Parking Included','Satellite Or Cable','Smoking Forbidden','Shared Parking','Terrace','Tv','Washing Machine','WiFi Internet','Ironing equipment','Essentials','Carbon monoxide detector','Fire extinguisher','Hangers','Self Check-in','No single-use plastic ','No single-use toiletries','Wardrobe','Stove','Wine glasses','Cleaning before checkout','Luxury linen','Cleaning and disinfection','Suitable For Infants (under 2 years)','Suitable For Children (2+ years old)','Professionally cleaned','Contactless check-in and check-out']::text[]),
(93069,'This welcoming 3 bedroom apartment is located in Gouna''s only beachfront community with a 24/7 free pool and beach access and is managed by Xuru Stays','This unique 3 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with a  free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The 3 bed apartment comes with an open plan fully equipped kitchen, 2 full ensuite bathrooms and 1 guest bathroom. The living room is furnished with a nice sofa, not to mention a beautiful balcony and a private rooftop overlooking the pool and beach.

It also features a 65 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for larger families and groups.

The styling is made with a homey and elegant taste to ensure guests have a wonderful and relaxing experience.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Abu Tig Marina. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.

Please note that scheduled maintenance works on the external facades and garden terrace areas will take place in Mangroovy Cluster 7 from May 9 until May 13. During this period, technicians may require access to garden and terrace areas to complete the maintenance works. We appreciate your understanding and apologize for any inconvenience caused.',ARRAY['Heating','Freezer','Fridge','Full Equipped Kitchen','Hot water','Coffee Maker','Air Conditioning','Balcony','Bed Linens/Towels','Gated Community','Shared Pool','Hair Dryer','Beach','Kettle','Kids Friendly','Microwave','Oven','Parking Included','Satellite Or Cable','Sea View','Smoking Forbidden','Shared Parking','Terrace','Tv','Washing Machine','24 Hour Check-in','WiFi Internet','Ironing equipment','Essentials','Smoke detector','Fire extinguisher','Hangers','Laptop Friendly Workspace','Self Check-in','No single-use plastic ','No single-use toiletries','Wardrobe','Extra pillows and blankets','Stove','Wine glasses','Cleaning before checkout','Luxury linen','Cleaning and disinfection','Suitable For Infants (under 2 years)','Suitable For Children (2+ years old)','Gated property','Resort','Professionally cleaned','Staff wear protective equipment','Social distancing','Contactless check-in and check-out']::text[]),
(93070,'This chic 2 bedroom apartment is located in Gouna''s only beachfront community with a free pool and beach access and is managed by Xuru Stays','This dashing 2 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The 2 bed apartment comes with an open plan fully equipped kitchen, 2 full ensuite bathrooms  and a living room with a nice sofa, not to mention a beautiful large balcony overlooking the pool.

It also features a 55 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & families.

The styling is made with an elegant & homey taste to ensure guests have a cozy experience.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Abu Tig Marina. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Heating','Freezer','Fridge','Full Equipped Kitchen','Hot water','Coffee Maker','Air Conditioning','Balcony','Bed Linens/Towels','Gated Community','Shared Pool','Hair Dryer','Kettle','Kids Friendly','Microwave','Oven','Parking Included','Satellite Or Cable','Smoking Forbidden','Shared Parking','Tv','Washing Machine','24 Hour Check-in','WiFi Internet','Ironing equipment','Essentials','Carbon monoxide detector','Fire extinguisher','Hangers','Self Check-in','No single-use plastic ','No single-use toiletries','Towels changed upon request','Wardrobe','Stove','Wine glasses','Cleaning before checkout','Luxury linen','Cleaning and disinfection','Suitable For Infants (under 2 years)','Suitable For Children (2+ years old)','Professionally cleaned','Contactless check-in and check-out']::text[]),
(93071,'This contemporary 2 bedroom apartment is located in Gouna''s only beachfront community with a 24/7 free pool and beach access and is managed by Xuru Stays','This waterfront 2 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with a 24/7 free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The 2 bed apartment comes with an open plan fully equipped kitchen, 2 full bathrooms with 1 ensuite and a living room with a large sofa not to mention a beautiful large terrance overlooking the pool.

It also features a 65 inch smart TV with Airplay and cable channels in the living room and a TV in each bedroom as well. There is a washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & families.

The styling is made with a functional approach to deliver a great relaxing vibe for the guests.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Abu Tig Marina. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Zouni'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna.','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Heating','Freezer','Fridge','Full Equipped Kitchen','Central Heating','Hot water','Coffee Maker','Air Conditioning','Bed Linens/Towels','Shared Pool','Hair Dryer','Kettle','Kids Friendly','Microwave','Oven','Parking Included','Satellite Or Cable','Smoking Forbidden','Shared Parking','Terrace','Tv','Washing Machine','WiFi Internet','Ironing equipment','Essentials','Smoke detector','Carbon monoxide detector','Fire extinguisher','Hangers','Laptop Friendly Workspace','Self Check-in','Wardrobe','Stove','Wine glasses','Cleaning before checkout','Luxury linen','Cleaning and disinfection','Suitable For Infants (under 2 years)','Suitable For Children (2+ years old)','Professionally cleaned','Swimming','Contactless check-in and check-out']::text[]),
(93072,'This attractive 1 bedroom apartment is located in Gouna''s only beachfront community with a free pool and beach access and is managed by Xuru Stays','This stunning pool & sea view 1 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with a  free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The 1 bedroom apartment comes with an open plan fully equipped kitchen, 1 full bathroom with 1 ensuite and a living room with a L shaped sofa, not to mention a beautiful large balcony and a rooftop terrace overlooking the pool. The unit is directly facing the pool and is enjoys a partial sea view as well .

It also features a 65 inch curved smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples.

The styling is made vibrant to ensure guests have a wonderful and relaxing experience.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Abu Tig Marina. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Heating','Freezer','Fridge','Full Equipped Kitchen','Hot water','Coffee Maker','Air Conditioning','Balcony','Bed Linens/Towels','Gated Community','Shared Pool','Hair Dryer','Kettle','Kids Friendly','Microwave','Oven','Parking Included','Satellite Or Cable','Sea View','Smoking Forbidden','Shared Parking','Terrace','Tv','Washing Machine','WiFi Internet','Ironing equipment','Essentials','Smoke detector','Carbon monoxide detector','Hangers','Self Check-in','No single-use plastic ','No single-use toiletries','Stove','Wine glasses','Cleaning before checkout','Luxury linen','Cleaning and disinfection','Suitable For Infants (under 2 years)','Suitable For Children (2+ years old)','Gated property','Contactless check-in and check-out']::text[]),
(93073,'This spacious 1 bedroom ground floor pool front apartment is located in Gouna''s only beachfront community with free pool and beach access and is managed by Xuru Stays.','This spacious 1 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The apartment is on the ground floor directly facing the pool and features an open plan fully equipped kitchen, 2 bathrooms and a living room. There is a bright and cozy outdoor furnished terrace, perfect for your morning coffee or late night relaxation.

It also features a 65 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & small families.

The styling of the apartment is tailored to give the guests a relaxing vibe.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Marina El Gouna. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Heating','Freezer','Fridge','Full Equipped Kitchen','Central Heating','Hot water','Coffee Maker','Air Conditioning','Balcony','Garden','Bed Linens/Towels','Gated Community','Shared Pool','Hair Dryer','Kettle','Kids Friendly','Microwave','Oven','Parking Included','Satellite Or Cable','Smoking Forbidden','Shared Parking','Terrace','Tv','Washing Machine','WiFi Internet','Ironing equipment','Essentials','Smoke detector','Carbon monoxide detector','Hangers','Self Check-in','No single-use plastic ','No single-use toiletries','Wardrobe','Stove','Wine glasses','Cleaning before checkout','Luxury linen','Cleaning and disinfection','Suitable For Infants (under 2 years)','Suitable For Children (2+ years old)','Professionally cleaned','Swimming','Contactless check-in and check-out']::text[]),
(93074,'This catchy 1 bedroom apartment is located in Gouna''s only beachfront community with a free pool and beach access and is managed by Xuru Stays','This Boho pool-front 1 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with a  free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The 1 bedroom apartment comes with an open plan fully equipped kitchen, 1 full bathroom with 1 ensuite and a living room with a L shaped sofa, not to mention a beautiful large balcony overlooking the pool. The unit is directly facing the pool and is enjoys a partial sea view as well .

It also features a 65 inch curved smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples.

The styling is made vibrant to ensure guests have a wonderful and relaxing experience.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Abu Tig Marina. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Heating','Freezer','Fridge','Full Equipped Kitchen','Central Heating','Hot water','Coffee Maker','Air Conditioning','Balcony','Bed Linens/Towels','Gated Community','Shared Pool','Hair Dryer','Kettle','Kids Friendly','Microwave','Oven','Parking Included','Satellite Or Cable','Smoking Forbidden','Shared Parking','Tv','Washing Machine','WiFi Internet','Ironing equipment','Essentials','Smoke detector','Carbon monoxide detector','Fire extinguisher','Hangers','Self Check-in','No single-use plastic ','No single-use toiletries','Wardrobe','Stove','Wine glasses','Cleaning before checkout','Luxury linen','Cleaning and disinfection','Suitable For Infants (under 2 years)','Suitable For Children (2+ years old)','Gated property','Professionally cleaned','Contactless check-in and check-out']::text[]),
(93075,'This joyful 2 bedroom pool-front apartment with a private rooftop is located in Gouna''s only beachfront community with free pool and beach access and is managed by Xuru Stays','This trendy 2 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The 2 bed apartment comes with an open plan fully equipped kitchen, 2 full bathrooms with 1 ensuite and a living room with a sofa bed that can sleep 2 additional guest, not to mention a beautiful large balcony and a rooftop overlooking the pool.

It also features a 65 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & families.

The styling is made with a mediterranean approach to follow the color schemes seen across the beautiful city of El Gouna.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Abu Tig Marina. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Heating','Full Equipped Kitchen','Hot water','Air Conditioning','Bed Linens/Towels','Hair Dryer','Kids Friendly','Parking Included','Satellite Or Cable','Tv','Washing Machine','WiFi Internet','Ironing equipment','Essentials','Smoke detector','Carbon monoxide detector','Fire extinguisher','Hangers','Self Check-in','Cleaning and disinfection','Contactless check-in and check-out']::text[]),
(93076,'This warm 1 bedroom apartment is located in Gouna''s only beachfront community with free pool and beach access and is managed by Xuru Stays','This warm and snug 1 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The apartment is on the first floor and features an open plan fully equipped kitchen, 1 bathroom and a living room. There is a bright and cozy furnished balcony, perfect for your morning coffee or late night relaxation.

It also features a 55 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & small families.

The styling of the apartment is tailored to give the guests a warm and relaxing vibe.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Marina El Gouna. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Heating','Freezer','Fridge','Full Equipped Kitchen','Hot water','Coffee Maker','Air Conditioning','Bed Linens/Towels','Gated Community','Shared Pool','Hair Dryer','Kettle','Kids Friendly','Microwave','Oven','Parking Included','Satellite Or Cable','Smoking Forbidden','Shared Parking','Terrace','Tv','Washing Machine','WiFi Internet','Ironing equipment','Essentials','Carbon monoxide detector','Fire extinguisher','Hangers','Self Check-in','No single-use plastic ','No single-use toiletries','Wardrobe','Stove','Wine glasses','Cleaning before checkout','Luxury linen','Cleaning and disinfection','Suitable For Infants (under 2 years)','Suitable For Children (2+ years old)','Professionally cleaned','Contactless check-in and check-out']::text[]),
(93077,'This modern 1 bedroom apartment is located in Gouna''s only beachfront community with free pool and beach access and is managed by Xuru Stays.','This warm and welcoming 1 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The apartment is on the first floor and features an open plan fully equipped kitchen, 1 bathroom and a living room. There is a bright and cozy outdoor furnished terrace, perfect for your morning coffee or late night relaxation.

It also features a 55 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & small families.

The styling of the apartment is tailored to give the guests a relaxing vibe.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Marina El Gouna. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Heating','Freezer','Fridge','Full Equipped Kitchen','Hot water','Air Conditioning','Bed Linens/Towels','Gated Community','Shared Pool','Hair Dryer','Kettle','Kids Friendly','Microwave','Oven','Parking Included','Satellite Or Cable','Smoking Forbidden','Shared Parking','Terrace','Tv','Washing Machine','WiFi Internet','Ironing equipment','Essentials','Carbon monoxide detector','Fire extinguisher','Hangers','Self Check-in','No single-use plastic ','No single-use toiletries','Wardrobe','Stove','Wine glasses','Cleaning before checkout','Luxury linen','Cleaning and disinfection','Suitable For Infants (under 2 years)','Suitable For Children (2+ years old)','Professionally cleaned','Contactless check-in and check-out']::text[]),
(93078,'This sunny 2 bedroom apartment is located in Gouna''s only beachfront community with free pool and beach access and is managed by Xuru Stays','This summery 2 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with a  free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The apartment is on the ground floor and features an open plan fully equipped kitchen, 1 bathrooms (one ensuite) and a living room. There is also a bright and enjoyable outdoor furnished terrace, perfect for your morning coffee or late night relaxation. The

apartment consists of two bedrooms, one with a queen size bed and the other bedroom includes a bunk bed that can sleep two additional guests.

It also features a 55 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & small families.

The styling of the apartment is tailored to give the guests an exotic and happy vibe.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Marina El Gouna. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Heating','Freezer','Fridge','Full Equipped Kitchen','Central Heating','Hot water','Coffee Maker','Air Conditioning','Balcony','Bed Linens/Towels','Gated Community','Shared Pool','Hair Dryer','Beach','Kettle','Kids Friendly','Microwave','Oven','Parking Included','Satellite Or Cable','Smoking Forbidden','Shared Parking','Terrace','Tv','Washing Machine','24 Hour Check-in','WiFi Internet','Ironing equipment','Essentials','Smoke detector','Carbon monoxide detector','Hangers','Laptop Friendly Workspace','Self Check-in','Paperless / recycled paper','No single-use plastic ','No single-use toiletries','Sustainable materials','Bird watching','Duty free','Streaming service','Wardrobe','Kitchenette','Stove','Wine glasses','Cleaning before checkout','Luxury linen','Cleaning and disinfection','Suitable For Infants (under 2 years)','Suitable For Children (2+ years old)','Gated property','Professionally cleaned','Staff wear protective equipment','Swimming','Contactless check-in and check-out']::text[]),
(93079,'This cheerful, partial sea view 1 bedroom apartment is located in Gouna''s only beachfront community with free pool and beach access and is managed by Xuru Stays.','This partial sea view 1 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with a  free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The 1 bedroom apartment comes with an open plan fully equipped kitchen, 1 ensuite full bathroom and a living room with a L shaped sofa. The unit enjoys a partial sea view

It also features a 65 inch curved smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples.

The styling is made vibrant to ensure guests have a wonderful and relaxing experience.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Abu Tig Marina. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Heating','Freezer','Fridge','Full Equipped Kitchen','Central Heating','Hot water','Coffee Maker','Air Conditioning','Balcony','Bed Linens/Towels','Gated Community','Shared Pool','Hair Dryer','Kettle','Kids Friendly','Microwave','Oven','Parking Included','Satellite Or Cable','Sea View','Smoking Forbidden','Shared Parking','Tv','Washing Machine','WiFi Internet','Ironing equipment','Essentials','Smoke detector','Carbon monoxide detector','Fire extinguisher','Hangers','Self Check-in','No single-use plastic ','No single-use toiletries','Wardrobe','Stove','Wine glasses','Cleaning before checkout','Luxury linen','Cleaning and disinfection','Suitable For Infants (under 2 years)','Suitable For Children (2+ years old)','Gated property','Professionally cleaned','Contactless check-in and check-out']::text[]),
(93080,'This city-view, peaceful 1 bedroom apartment is located in Gouna''s only beachfront community with free pool and beach access and is managed by Xuru Stays.','This beautiful 1 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with a free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The apartment features a sunny balcony. It also comes with an open plan fully equipped kitchen, a full bathroom and a living room.

It also features a 50 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle, microwave and a fully functional stove and oven. The apartment is great for couples.

The styling of the apartment is meant to be simple, fresh and bright to ensure guests have a calming experience.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Marina El Gouna. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Heating','Freezer','Fridge','Full Equipped Kitchen','Bottled Water','Canoe','Central Heating','Hot water','Coffee Maker','Air Conditioning','Balcony','Bed Linens/Towels','Gated Community','Shared Pool','Hair Dryer','Beach','Kettle','Kids Friendly','Kids Pool','Long Term Rentals Available','Microwave','Oven','Parking Included','Satellite Or Cable','Smoking Forbidden','Shared Parking','Terrace','Tv','Washing Machine','Water Cooler','24 Hour Check-in','WiFi Internet','Ironing equipment','Essentials','Smoke detector','Carbon monoxide detector','Hangers','Self Check-in','Paperless / recycled paper','No single-use plastic ','No single-use toiletries','Sustainable materials','Duty free','Marina','Spa nearby','Streaming service','Wardrobe','Extra pillows and blankets','Stove','Wine glasses','Cleaning before checkout','Luxury linen','Cleaning and disinfection','Suitable For Infants (under 2 years)','Gated property','Beach front','Locked bedroom(s)','Professionally cleaned','Staff wear protective equipment','Swimming','Hand sanitizer','Contactless check-in and check-out','Water sports']::text[]),
(93081,'This 2 bedroom penthouse is located in Gouna''s only beachfront community with free pool and beach access and is managed by Xuru Stays.','This posh & fancy 2 bedroom penthouse is located in Gouna''s only beachfront residence - Mangroovy with free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The apartment is on the 2nd floor overlooking the pool and features a private rooftop with a jacuzzi - perfect for sun bathing and enjoying a drink! It also features an open plan fully equipped kitchen, 2 full bathrooms and a living room with a sofa bed that can sleep 2 additional guests. The apartment has 2 bedrooms with queen size beds and (both ensuite)

There is a 55 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for groups & big families.

The elegant styling of the apartment, makes it one of a kind within its community.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Marina El Gouna. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Heating','Freezer','Fridge','Full Equipped Kitchen','Bottled Water','Hot water','Coffee Maker','Golf','Air Conditioning','Bed Linens/Towels','Gated Community','Shared Pool','Hair Dryer','Handicap Accessible','Beach','Kettle','Kids Friendly','Long Term Rentals Available','Microwave','Oven','Parking Included','Satellite Or Cable','Smoking Forbidden','Shared Parking','Tennis Court','Terrace','Tv','WiFi Internet','Ironing equipment','Essentials','Smoke detector','Carbon monoxide detector','Fire extinguisher','Hangers','Laptop Friendly Workspace','Self Check-in','Paperless / recycled paper','No single-use plastic ','No single-use toiletries','Sustainable materials','Wardrobe','Extra pillows and blankets','Kitchenette','Stove','Wine glasses','Cleaning before checkout','Luxury linen','Cleaning and disinfection','Suitable For Infants (under 2 years)','Suitable For Children (2+ years old)','Beach front','Outdoor pool','Locked bedroom(s)','Professionally cleaned','Staff wear protective equipment','Horseback riding','Social distancing','Swimming']::text[]),
(93082,'This flattering 3 bedroom villa is located at Gouna''s elite community of Ancient Sands. The villa features a private pool and is managed by Xuru Stays.','This waterfront 3 bedroom villa is located in Gouna''s beloved Ancient Sands community and features a private pool along with a private rooftop.

The ground level is made up of two bedrooms facing the pool with their own private bathrooms. While the first level features an open plan fully equipped kitchen, a living room with 2 comfy sofas and large terrace with great views of the surrounding nature.

It also features a 65 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave.

The styling of the villa is tailored to give the guests a relaxing and a meditative vibe.','Guests have access to the entire property','-Ancient Sands is located 3 KM from Gourmet (grocery store).
- Abu Tig Marina is a 7 minute drive from Ancient Sands (features many restaurants, cafes and bars)','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee).','Please note that smoking is not allowed inside the property. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Heating','Freezer','Fridge','Full Equipped Kitchen','Hot water','Coffee Maker','Air Conditioning','Balcony','Garden','Bed Linens/Towels','Gated Community','Hair Dryer','Kettle','Kids Friendly','Long Term Rentals Available','Microwave','Oven','Parking Included','Satellite Or Cable','Smoking Forbidden','Shared Parking','Terrace','Tv','Washing Machine','24 Hour Check-in','Private Pool','WiFi Internet','Ironing equipment','Essentials','Smoke detector','Carbon monoxide detector','Hangers','Self Check-in','No single-use plastic ','No single-use toiletries','Wardrobe','Extra pillows and blankets','Cleaning products','Stove','Wine glasses','Luxury linen','Cleaning and disinfection','Suitable For Infants (under 2 years)','Suitable For Children (2+ years old)','Gated property','Secured parking','Locked bedroom(s)','Professionally cleaned','Staff wear protective equipment','Social distancing','Swimming','Contactless check-in and check-out']::text[]),
(93083,'This industrial 1 bedroom apartment is located in Gouna''s only beachfront compound with free pool and beach access and is managed by Xuru Stays','This rustic 1 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with a free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The apartment is on the first floor and features an open plan fully equipped kitchen, 2 bathrooms (one ensuite) and a living room with a sofa bed that can sleep up to 2 additional guests.

It also features a 55 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & small families.

The styling of the apartment is tailored to give the guests an exotic and cheerful vibe.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Marina El Gouna. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Heating','Freezer','Fridge','Full Equipped Kitchen','Bottled Water','Hot water','Coffee Maker','Air Conditioning','Balcony','Bed Linens/Towels','Gated Community','Hair Dryer','Handicap Accessible','Kettle','Kids Friendly','Microwave','Oven','Parking Included','Satellite Or Cable','Smoking Forbidden','Tv','Washing Machine','24 Hour Check-in','WiFi Internet','Ironing equipment','Essentials','Carbon monoxide detector','Hangers','Self Check-in','Wardrobe','Stove','Wine glasses','Cleaning and disinfection','Gated property','Professionally cleaned','Shared Pool','No single-use plastic ','No single-use toiletries','Cleaning before checkout','Luxury linen','Suitable For Infants (under 2 years)','Suitable For Children (2+ years old)']::text[]),
(93084,'This earthy 1 bedroom apartment is located in Gouna''s only beachfront community with free pool and beach access and is managed by Xuru Stays','This neat 1 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with a free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The apartment is on the second floor and features an open plan fully equipped kitchen, 2 bathrooms (one ensuite) and a living room with a sofa bed that can sleep up to 2 additional guests.

It also features a 55 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & small families.

The styling of the apartment is tailored to give the guests a soothing and happy vibe.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Marina El Gouna. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Heating','Freezer','Fridge','Full Equipped Kitchen','Bottled Water','Hot water','Coffee Maker','Air Conditioning','Balcony','Bed Linens/Towels','Gated Community','Shared Pool','Kettle','Kids Friendly','Microwave','Oven','Parking Included','Satellite Or Cable','Smoking Forbidden','Tv','Washing Machine','24 Hour Check-in','WiFi Internet','Ironing equipment','Essentials','Carbon monoxide detector','Hangers','Self Check-in','Clothes Dryer','No single-use plastic ','No single-use toiletries','Wardrobe','Stove','Wine glasses','Cleaning before checkout','Luxury linen','Cleaning and disinfection','Suitable For Infants (under 2 years)','Suitable For Children (2+ years old)','Professionally cleaned']::text[]),
(93085,'This trendy 2 bedroom apartment features a private rooftop and is overlooking the pool is located in Gouna''s only beachfront community with free pool and beach access and is managed by Xuru Stays.','This chic and timeless 2 bedroom apartment with a private rooftop is located in Gouna''s only beachfront residence - Mangroovy with free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The 2 bed apartment comes with an open plan fully equipped kitchen, 2 full bathrooms with 1 ensuite and a living room. There are two queen beds, one in each bedroom that can sleep a total of 4 guests, not to mention a beautiful large terrance overlooking the

pool. Additionally, guests will have free and private access to the rooftop which is features outdoor furniture. The sun deck is a great feature of this unique 2 bedroom apartment.

It also features a 65 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is perfect for couples & larger families.

The interior styling is earthy to ensure guests and families enjoy their vacation at the beautiful city of Gouna.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Abu Tig Marina. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Heating','Freezer','Fridge','Full Equipped Kitchen','Hot water','Coffee Maker','Air Conditioning','Balcony','Bed Linens/Towels','Gated Community','Shared Pool','Hair Dryer','Beach','Kettle','Kids Friendly','Microwave','Oven','Parking Included','Satellite Or Cable','Smoking Forbidden','Shared Parking','Terrace','Tv','Washing Machine','24 Hour Check-in','WiFi Internet','Ironing equipment','Essentials','Smoke detector','Carbon monoxide detector','Fire extinguisher','Hangers','Self Check-in','Energy-efficient devices','No single-use plastic ','No single-use toiletries','Wardrobe','Extra pillows and blankets','Kitchenette','Stove','Wine glasses','Cleaning before checkout','Luxury linen','Patio','Cleaning and disinfection','Suitable For Infants (under 2 years)','Suitable For Children (2+ years old)','Resort','Town','Professionally cleaned','Staff wear protective equipment','Swimming','Contactless check-in and check-out']::text[]),
(93086,'This 2 bedroom with beach and pool view is located in Gouna''s only beachfront community with free pool and beach access and is managed by Xuru Stays. The apartment has a private rooftop which overlooks the pool and beach.','This beachfront 2 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The 2 bedroom apartment comes with an open plan fully equipped kitchen, 2 full bathrooms with 1 ensuite and a living room with a large sofa , not to mention a beautiful balcony and rooftop that enjoys views of the pool and beach.

It also features a 65 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & families.

The styling is made with a elegant and chic taste to ensure guests have a wonderful and relaxing experience.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Abu Tig Marina. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Heating','Freezer','Fridge','Full Equipped Kitchen','Hot water','Coffee Maker','Air Conditioning','Bed Linens/Towels','Gated Community','Shared Pool','Hair Dryer','Beach','Kettle','Kids Friendly','Long Term Rentals Available','Microwave','Oven','Parking Included','Satellite Or Cable','Smoking Forbidden','Shared Parking','Terrace','Tv','Washing Machine','24 Hour Check-in','WiFi Internet','Ironing equipment','Essentials','Carbon monoxide detector','Hangers','Self Check-in','No single-use plastic ','No single-use toiletries','Wardrobe','Extra pillows and blankets','Stove','Wine glasses','Luxury linen','Cleaning and disinfection','Suitable For Infants (under 2 years)','Suitable For Children (2+ years old)','Gated property','Professionally cleaned','Contactless check-in and check-out','Central Heating','Dishwasher','Balcony','Sea View','Smoke detector','Fire extinguisher','Cleaning products','Beach view','Staff wear protective equipment','Social distancing']::text[]),
(93087,'This Eclectic 2 bedroom twin house sleeps 7 guests and is located at Gouna''s elite community of Tawila. The twin house features a private roof top jacuzzi in addition to a large terrace and is managed by Xuru Stays','This lagoon front 2 bedroom twin house is located in Gouna''s beloved Tawila community.

The ground level features an open plan fully equipped kitchen, ensuite bedroom and a living room with a sofa bed overlooking the lagoon.

It also features a 65 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave.

The upper floor includes a the second bedroom which sleeps 3 guests and has its own private bathroom.

The twin house also features a large terrace with a private jacuzzi and a nice seating area overlooking the lagoons of Tawila.

The styling of the villa is tailored to give the guests a relaxing and a unique vibe.','Guests have access to the entire property','-Tawila is uniquely located 400 meters from Gourmet (grocery store). Guests will be able to walk 5 minutes and get to it.
- Abu Tig Marina is a 4 minute drive from Tawila (features many restaurants, cafes and bars)','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Heating','Freezer','Fridge','Full Equipped Kitchen','Central Heating','Hot water','Coffee Maker','Air Conditioning','Balcony','Garden','Bed Linens/Towels','Hair Dryer','Handicap Accessible','Kettle','Kids Friendly','Microwave','Oven','Satellite Or Cable','Smoking Forbidden','Terrace','Tv','Washing Machine','24 Hour Check-in','WiFi Internet','Ironing equipment','Essentials','Carbon monoxide detector','Fire extinguisher','Hangers','Self Check-in','No single-use plastic ','No single-use toiletries','Wardrobe','Extra pillows and blankets','Stove','Wine glasses','Luxury linen','Patio','Cleaning and disinfection','Gated property','Street parking','Lake front','Lake view','Professionally cleaned','Swimming','Contactless check-in and check-out']::text[]),
(93088,'This 1 bedroom apartment is located in Cyan El Gouna, sleeps 4 guests and is managed by Xuru Stays','This 1 bedroom apartment is located in Gouna''s Cyan community.

It features a spacious living room overlooking a golf course, a walk in fully equipped kitchen and 1 bedroom and sofa bed that can sleep 4 guests comfortably.

It also features a 65 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave.','Guests have access to the entire property',NULL,'Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Heating','Freezer','Fridge','Full Equipped Kitchen','Bottled Water','Central Heating','Hot water','Coffee Maker','Air Conditioning','Balcony','Bed Linens/Towels','Gated Community','Shared Pool','Hair Dryer','Beach','Kettle','Kids Friendly','Microwave','Oven','Parking Included','Satellite Or Cable','Smoking Forbidden','Shared Parking','Tv','Washing Machine','WiFi Internet','Ironing equipment','Essentials','Smoke detector','Carbon monoxide detector','Hangers','No single-use plastic ','No single-use toiletries','Bird watching','Duty free','Marina','Spa nearby','Streaming service','Wardrobe','Extra pillows and blankets','Kitchenette','Stove','Wine glasses','Luxury linen','Cleaning and disinfection','Suitable For Infants (under 2 years)','Suitable For Children (2+ years old)','Gated property','Locked bedroom(s)','Professionally cleaned','Staff wear protective equipment','Swimming','Water sports']::text[]),
(93089,'This trendy 1 bedroom apartment is located in Gouna''s only beachfront community with a 24/7 free pool and beach access and is managed by Xuru Stays. The apartment features a great rooftop overlooking the pool.','This trendy 1 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The 1 bedroom apartment comes with an open plan fully equipped kitchen, 1 full bathrooms, a guest bathroom with 1 and a living room , not to mention a beautiful bright furnished rooftop overlooking the pool.

It also features a 65 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples.

The styling is made with a modish and calming taste to ensure guests have a wonderful and relaxing experience.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Abu Tig Marina. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the ''Zouni'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna.','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Heating','Fridge','Full Equipped Kitchen','Hot water','Coffee Maker','Air Conditioning','Balcony','Bed Linens/Towels','Gated Community','Shared Pool','Hair Dryer','Kettle','Microwave','Oven','Satellite Or Cable','Smoking Forbidden','Shared Parking','Terrace','Tv','Washing Machine','WiFi Internet','Ironing equipment','Essentials','Smoke detector','Carbon monoxide detector','Hangers','No single-use plastic ','No single-use toiletries','Wardrobe','Extra pillows and blankets','Wine glasses','Luxury linen','Cleaning and disinfection','Suitable For Infants (under 2 years)','Suitable For Children (2+ years old)','Professionally cleaned']::text[]),
(93090,'This contemporary 3 bedroom apartment sleeps 5 guests and is located in Gouna''s only beachfront community with free pool and beach access and is managed by Xuru Stays.','This prime 3 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The 3 bedroom apartment comes with an open plan fully equipped kitchen, 2 full ensuite bathrooms with 1 guest bathroom. It also features a living room with a large sofa, not to mention a beautiful panoramic balcony overlooking the pool at cluster M7 which closest to the beach.

It also features a 65 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & families.

The styling is basic yet relaxing to ensure guests have a wonderful and serene experience.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Abu Tig Marina. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to ''Zouni'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna.','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.

Please note that scheduled maintenance works on the external facades and garden terrace areas will take place in Mangroovy Cluster 7 from May 9 until May 13. During this period, technicians may require access to garden and terrace areas to complete the maintenance works. We appreciate your understanding and apologize for any inconvenience caused.',ARRAY['Heating','Fridge','Full Equipped Kitchen','Hot water','Coffee Maker','Air Conditioning','Balcony','Bed Linens/Towels','Gated Community','Shared Pool','Hair Dryer','Kettle','Kids Friendly','Microwave','Oven','Parking Included','Satellite Or Cable','Smoking Forbidden','Tv','Washing Machine','WiFi Internet','Ironing equipment','Essentials','Smoke detector','Carbon monoxide detector','Hangers','No single-use plastic ','No single-use toiletries','Wardrobe','Extra pillows and blankets','Stove','Wine glasses','Cleaning before checkout','Luxury linen','Cleaning and disinfection','Suitable For Infants (under 2 years)','Suitable For Children (2+ years old)','Resort','Street parking','Lake view','Professionally cleaned']::text[]),
(93091,'This1 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with a 24/7 free pool and beach access.','This1 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with a 24/7 free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The apartment comes with an open plan fully equipped kitchen, a full bathroom and a living room with a sofa bed which can accommodate two other guests.

It also features a 50 inch smart TV with Airplay and cable channels, washing machine with a dryer function, a Nespresso machine, kettle, microwave and a kitchen blender. The apartment is great for couples & small families.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Marina El Gouna. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Gated Community','Air Conditioning','Coffee Maker','Hair Dryer','WiFi Internet','Kids Friendly','Microwave','Washing Machine','Tv','Shared Pool','Satellite Or Cable','Kettle','Oven','Fridge','Ironing equipment','Full Equipped Kitchen','Terrace','Shared Parking','Bed Linens/Towels','Heating','Essentials','Smoke detector','Carbon monoxide detector','Hangers','No single-use plastic ','No single-use toiletries','Hot water','Wardrobe','Extra pillows and blankets','Wine glasses','Luxury linen','Professionally cleaned','Cleaning and disinfection','Suitable For Infants (under 2 years)','Suitable For Children (2+ years old)']::text[]),
(93092,'This 1 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with free pool and beach access.','This 1 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The apartment is on the ground floor directly facing the pool and features an open plan fully equipped kitchen, 2 bathrooms (one ensuite) and a living room. There is a bright and cozy outdoor furnished terrace, perfect for your morning coffee or late night relaxation.

It also features a 55 inch smart TV with Airplay and cable channels, washing machine , a Nespresso machine, kettle and a microwave. The apartment is great for couples & small families.

The styling of the apartment is tailored to give the guests a relaxing vibe.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Marina El Gouna. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous Zouni beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna.','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Gated Community','Central Heating','Air Conditioning','Coffee Maker','Garden','Hair Dryer','WiFi Internet','Kids Friendly','Microwave','Washing Machine','Tv','Satellite Or Cable','Parking Included','Kettle','Oven','Fridge','Freezer','Ironing equipment','Full Equipped Kitchen','Balcony','Terrace','Shared Parking','Smoking Forbidden','Bed Linens/Towels','Heating','Essentials','Smoke detector','Carbon monoxide detector','Hangers','No single-use plastic ','No single-use toiletries','Hot water','Wardrobe','Stove','Wine glasses','Luxury linen','Swimming','Professionally cleaned','Cleaning and disinfection','Suitable For Infants (under 2 years)','Suitable For Children (2+ years old)']::text[]),
(93093,'This cozy 2 bedroom apartment is located in G-cribs with free pool access.','This cozy 2 bedroom apartment is located in G-cribs with free pool access.

The 2 bedroom apartment comes with an open plan fully equipped kitchen, 2 full bathrooms  and a living room , not to mention a beautiful balcony  that enjoy views of the pool.

It also features a 65 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & families.

The styling is made with a modish and calming taste to ensure guests have a wonderful and relaxing experience.','Guests have access to the entire apartment','G Cribs is the comfort zone for those who want to discover more.
Each unit receives full access to all facilities and services G Cribs provides.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna.','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.
 Egyptian and Arab couples are required to provide marriage certificate, according to the Egyptian law. Foreign nationalities do not need a marriage certificate.',ARRAY['Gated Community','Bottled Water','Air Conditioning','Coffee Maker','Hair Dryer','WiFi Internet','Kids Friendly','Microwave','Washing Machine','Tv','Shared Pool','Satellite Or Cable','Parking Included','Kettle','Oven','Fridge','Freezer','Ironing equipment','Full Equipped Kitchen','Balcony','Shared Parking','Smoking Forbidden','Bed Linens/Towels','Heating','Essentials','Carbon monoxide detector','Fire extinguisher','Hangers','No single-use plastic ','No single-use toiletries','Towels changed upon request','Hot water','Wardrobe','Stove','Wine glasses','Luxury linen','Professionally cleaned','Cleaning and disinfection','Suitable For Infants (under 2 years)','Suitable For Children (2+ years old)']::text[]),
(93094,'This cozy 1 bedroom apartment is located in G-cribs with free pool access.','This cozy 1 bedroom apartment is located in G-cribs with free pool access.

The 1 bedroom apartment comes with an open plan fully equipped kitchen, 1 full bathroom  and a living room , not to mention a beautiful terrace  that enjoy views of the pool.

It also features a 65 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & families.

The styling is made with a modish and calming taste to ensure guests have a wonderful and relaxing experience.','Guests have access to the entire apartment','G Cribs is the comfort zone for those who want to discover more.
Each unit receives full access to all facilities and services G Cribs provides.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna.','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.
 Egyptian and Arab couples are required to provide marriage certificate, according to the Egyptian law. Foreign nationalities do not need a marriage certificate.',NULL::text[]),
(93095,'This lagoon front 4 bedroom villa is located in Gouna''s beloved Joubal  community and features a private pool along with a guest / maid’s bedroom.','This lagoon front 4 bedroom villa is located in Gouna''s beloved Joubal  community and features a private pool along with a guest / maid’s bedroom.

The ground level features an open plan fully equipped kitchen, maid’s room, dining area and a living room.

It also features a 65 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave.

The first level features 4 separate beautifully decorated bedrooms with king size beds. Additionally there are a total of 4 full bathrooms.

The styling of the villa is tailored to give the guests a relaxing and a unique vibe.','Guests have access to the entire property','-Joubal is a center point from Abu Tig Marina.
- Joubal Lagoon located 35 minutes away from Hurghada international airport.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.

-Marina area and boats are not included in your rental and guests are not allowed over there.

-No Guests are allowed to park on the left hand side of the parking

-Guest parking is on your right hand side only.',NULL::text[]),
(93096,'This 1 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with free pool and beach access.','This 1 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The apartment is on the second floor and features an open plan fully equipped kitchen, 1 bathroom and a living room.

It also features a 65 inch smart TV with Airplay and cable channels, washing machine with a separate dryer, a Nespresso machine, kettle and a microwave. The apartment is great for couples & small families.

The styling of the apartment is tailored to give the guests a relaxing vibe.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Marina El Gouna. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous Zouni beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna.','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',NULL::text[]),
(93097,'This cozy 1 bedroom studio is located in G-cribs with free pool access.','This cozy 1 bedroom studio is located in G-cribs with free pool access.

The 1 bedroom studio comes with an open plan fully equipped kitchen, 1 full bathroom.

It also features a 65 inch smart TV with Airplay and cable channels, a Nespresso machine, kettle and a microwave.

The styling is made with a modish and calming taste to ensure guests have a wonderful and relaxing experience.','Guests have access to the entire apartment','G Cribs is the comfort zone for those who want to discover more.
Each unit receives full access to all facilities and services G Cribs provides.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna.','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.
 Egyptian and Arab couples are required to provide marriage certificate, according to the Egyptian law. Foreign nationalities do not need a marriage certificate.',NULL::text[]),
(93098,'This 1 bedroom apartment is located in Fanadir Marina, five minutes away from Abo Tig Marina.','This 1 bedroom apartment is located in Fanadir Marina, five minutes away from Abo Tig Marina.

The apartment is on the ground floor  and features an open plan fully equipped kitchen, 2 bathrooms (one ensuite) and a living room. There is a bright and cozy outdoor terrace, perfect for your morning coffee or late night relaxation.

It also features a 65 inch smart TV with Airplay and cable channel, a Nespresso machine, kettle and a microwave. The apartment is great for couples & small families.

The styling of the apartment is tailored to give the guests a relaxing vibe.','Guests have access to the entire apartment','-Fanadir Marina is a place to enjoy your favorite water activities.
- Fanadir Marina is located in the heart of El Gouna, just 5 minutes away from Abu Tig Marina and 25 minutes away from the airport.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna.','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',NULL::text[]),
(93099,'This  enriched 2 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with free pool and beach access.','This  enriched 2 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The 2 bedroom apartment comes with an open plan fully equipped kitchen, 2 full bathrooms with 1 ensuite and a living room, not to mention a beautiful balcony and a rooftop  to enjoy views of the pool and beach.

It also features a 65 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & families.

The styling is made with a modish and calming taste to ensure guests have a wonderful and relaxing experience.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Abu Tig Marina. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna.','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',NULL::text[]),
(93100,'This idyllic 2 bedroom apartment is located in Gouna''s only beachfront community with a free pool and beach access and is managed by Xuru Stays','This untroubled 2 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with a free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The 2 bed apartment comes with an open plan fully equipped kitchen, 2 full bathrooms with 1 ensuite and a living room with a large sofa bed that can sleep 2 additional guest, not to mention a beautiful large balcony and a private rooftop overlooking the pool.

It also features a 65 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & families.

The styling is made with a modern and voguish approach to ensure guests have a wonderful and relaxing experience.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Abu Tig Marina. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Zouni '' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',NULL::text[]),
(93101,'This cozy 1 bedroom studio is located in G-cribs with free pool access.','This cozy 1 bedroom studio is located in G-cribs with free pool access.

The 1 bedroom studio comes with an open plan fully equipped kitchen, 1 full bathroom.

It also features a 65 inch smart TV with Airplay and cable channels, a Nespresso machine, kettle and a microwave.

The styling is made with a modish and calming taste to ensure guests have a wonderful and relaxing experience.','Guests have access to the entire apartment','G Cribs is the comfort zone for those who want to discover more.
Each unit receives full access to all facilities and services G Cribs provides.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna.','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.
 Egyptian and Arab couples are required to provide marriage certificate, according to the Egyptian law. Foreign nationalities do not need a marriage certificate.',NULL::text[]),
(93102,'This lagoon front 3 bedroom townhouse is located in Gouna''s beloved Tawila community and features a shared pool along with a guest / maid’s bedroom.','This lagoon front 3 bedroom townhouse is located in Gouna''s beloved Tawila community and features a shared pool along with a guest / maid’s bedroom.

The ground level features an open plan fully equipped kitchen, , guest bathroom and a living room with a  sofa.

It also features a 55 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave.

The styling of the townhouse is tailored to give the guests a relaxing and a unique vibe.','Guests have access to the entire property','-Tawila is uniquely located 400 meters from Gourmet (grocery store). Guests will be able to walk 5 minutes and get to it.
- Abu Tig Marina is a 4 minute drive from Tawila (features many restaurants, cafes and bars)','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',NULL::text[]),
(93103,'This 2 bedroom apartment is located in Cyan El Gouna, sleeps 4 guests and is managed by Xuru Stays','This 2 bedroom apartment is located in Gouna''s Cyan community.

It features a spacious living room overlooking the lagoon, a walk in fully equipped kitchen, 2 full bathrooms and guest bathroom.

It also features a 65 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave.','Guests have access to the entire property','- Just minutes from Abu Tig marina (features many restaurants, cafes and bars)','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',NULL::text[]),
(93104,'This lagoon front 1 bedroom apartment with a sofa bed is located in Gouna''s beloved Tawila community and overlooking the lagoon.','This lagoon front 1 bedroom apartment with a sofa bed is located in Gouna''s beloved Tawila community and overlooking the lagoon.

It features an open plan fully equipped kitchen, one bedroom and a living room.

It also features a 50 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave.

The styling of the villa is tailored to give the guests a relaxing and a unique vibe.','Guests have access to the entire property','-Tawila is uniquely located 400 meters from Gourmet (grocery store). Guests will be able to walk 5 minutes and get to it.
- Abu Tig Marina is a 4 minute drive from Tawila (features many restaurants, cafes and bars)','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',NULL::text[]),
(93105,'This chilled 2 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy and is managed by Xuru Stays.','This chilled 2 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with a 24/7 free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The apartment is on the first floor and features an open plan fully equipped kitchen, 2 bathrooms (one ensuite) and a living room with a sofa bed that can sleep up to 2 additional guests.

It also features a 65 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & small families.

The styling of the apartment is tailored to give the guests a serene and calming vibe.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Marina El Gouna. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',NULL::text[]),
(93106,'This welcoming 1 bedroom apartment is located in Gouna''s only beachfront compound with free pool and beach access and is managed by Xuru Stays','This warm and welcoming 1 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The apartment is on the second floor and features an open plan fully equipped kitchen, 1 bathroom and a living room.
It also features a 55 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & small families.
The styling of the apartment is tailored to give the guests a jazzy and happy vibe.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Marina El Gouna. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Zounii'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',NULL::text[]),
(93107,'This contemporary 2 bedroom apartment is located in Gouna''s only beachfront community with a 24/7 free pool and beach access and is managed by Xuru Stays','This calming 2 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with a 24/7 free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The 2 bed apartment comes with an open plan fully equipped kitchen, 2 full bathrooms with 1 ensuite and a living room , not to mention a beautiful large balcony and a private rooftop overlooking the pool and beach.

It also features a 55 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & families.

The styling is made with a modish and calming taste to ensure guests have a wonderful and relaxing experience.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Abu Tig Marina. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.

Please note that scheduled maintenance works on the external facades and garden terrace areas will take place in Mangroovy Cluster 7 from May 9 until May 13. During this period, technicians may require access to garden and terrace areas to complete the maintenance works. We appreciate your understanding and apologize for any inconvenience caused.',NULL::text[]),
(93108,'Your elevated stay at Mangroovy, El Gouna’s only beachfront residence — where laid-back luxury meets the Red Sea breeze.','This trendy 2-bedroom apartment offers direct access to both the pool and beach, combining comfort and convenience in one of Gouna’s most sought-after locations.

Inside, you’ll find:
✔️ Two thoughtfully designed bedrooms with cozy beds and calming, stylish decor
✔️ Two full bathrooms, including one ensuite — with fresh towels provided
✔️ A welcoming living room with comfortable seating and natural light
✔️ An open-plan, fully equipped kitchen with a microwave, kettle, Nespresso machine, utensils, and washing machine
✔️ A private balcony — plus a spacious furnished rooftop
✔️ A 55” Smart TV with AirPlay and cable channels
✔️ Complimentary bottled water and Nespresso coffee capsules
✔️ Access to Mangroovy’s exclusive beachfront and free swimming pools','✔️ Guests will have full private access to the apartment and all of its amenities during their stay
✔️ Guests will also enjoy access to compound facilities (pools, beaches, communal areas — subject to compound rules)
✔️ For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same compound or nearby.','Mangroovy is El Gouna’s only beachfront residence, uniquely located just 800 meters from Abu Tig Marina — about a 10-minute walk. Guests enjoy both convenience and exclusivity, with direct access to sandy beaches and some of Gouna’s best dining and lifestyle spots.

✔️ Wonderful location with direct access to El Gouna’s beaches
✔️ Abu Tig Marina – famous for yachts, fine dining, nightlife, and seaside strolls (10 min walk)
✔️ Bright Star supermarket – directly in front of the residence toward the Marina
✔️ ZOUNi Beach Lounge – located at Mangroovy’s beach
✔️ The Smokery – a local favorite, just 450 meters away
✔️ Downtown El Gouna – lively hub with restaurants, cafés, shops, bars, and supermarkets
✔️ Popular beach clubs and lounges nearby (charges may apply)
✔️ Wide range of water sports – kitesurfing, diving, and boat trips
✔️ Family-friendly facilities – shared pools, landscaped gardens, and outdoor spaces
✔️ Safe, gated community with 24/7 security
✔️ Everyday convenience – supermarkets, pharmacies, and essential services close by
✔️ Cultural and lifestyle events – film festivals, concerts, and exhibitions often hosted in El Gouna','✔️ Tuk-tuks are the most popular and convenient way to get around Gouna
✔️ Walking distance to beaches, restaurants, and supermarkets
✔️ Downtown El Gouna: 5–10 mins (cafes, supermarkets, pharmacies)
✔️ Abu Tig Marina: About a 10-minute walk (restaurants, shops, nightlife, yachts)
✔️ Gouna Conference Center & Golf Courses: 10–15 mins
✔️ El Gouna Hospital: 10–15 mins
✔️ Hurghada International Airport: 30–40 mins
✔️ Free Parking on premises','⚠️ Entry Requirements for El Gouna
✔️Egyptian nationals: National ID (front & back) + authentic proof of marriage (for couples)
✔️Arab nationals: Passport copy + authentic proof of marriage (for couples)
✔️Other nationalities: Passport copy only (no marriage proof required)

⚠️ If one partner is Egyptian/Arab and the other is not, proof of marriage is required
✔️ QR Codes for entry are issued by El Gouna Community Care. Please submit all required IDs 48 hours before check-in so we can arrange your entry QR.
Late submissions may cause delays or denial of entry. Approvals are fully at the discretion of El Gouna Community Care.
✔️ Smoking is only allowed outdoors (fine of $100 applies indoors)
✔️ Visitors are not permitted — only registered guests may enter
✔️ Please switch off AC and lights when leaving the apartment
✔️ Kindly leave the unit tidy upon checkout.',NULL::text[]),
(93109,'This trendy 2 bedroom apartment is located in Gouna''s only beachfront community with a 24/7 free pool and beach access and is managed by Xuru Stays.','This trendy 2 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The 2 bedroom apartment comes with an open plan fully equipped kitchen, 2 full bathrooms, a guest bathroom with 1 and a living room ,

It also features a 65 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples.

The styling is made with Staggering & Soothing taste to ensure guests have a wonderful and relaxing experience.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Abu Tig Marina. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the ''Zouni'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna.','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',NULL::text[]),
(93110,'This cozy 1 bedroom studio is located in G-cribs with free pool access.','This cozy 1 bedroom studio is located in G-cribs with free pool access.

The 1 bedroom studio comes with an open plan fully equipped kitchen, 1 full bathroom.

It also features a 55 inch smart TV with Airplay and cable channels, a Nespresso machine, kettle and a microwave.

The styling is made with a modish and calming taste to ensure guests have a wonderful and relaxing experience.','Guests have access to the entire apartment','G Cribs is the comfort zone for those who want to discover more.
Each unit receives full access to all facilities and services G Cribs provides.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna.','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.
 Egyptian and Arab couples are required to provide marriage certificate, according to the Egyptian law. Foreign nationalities do not need a marriage certificate.',NULL::text[]),
(93111,'This welcoming 1 bedroom apartment is located in Gouna''s only beachfront compound with free pool and beach access and is managed by Xuru Stays.','This warm and welcoming 1 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The apartment is on the ground floor and features an open plan fully equipped kitchen,  bathrooms (one ensuite) and a living room. There is a bright a cosy outdoor furnished terrace, perfect for your morning coffee or late night relaxation.

It also features a 55 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & small families.

The styling of the apartment is tailored to give the guests a jazzy and happy vibe.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Marina El Gouna. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Zounii'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',NULL::text[]),
(93112,'This gorgeous 2 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with free pool and beach access.','This gorgeous 2 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The 2 bedroom apartment comes with an open plan fully equipped kitchen, 2 full ensuite bathrooms and a living room  , not to mention a beautiful balcony that enjoys views of the pool and beach.

It also features a 55 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & families.

The styling is made with a elegant and chic taste to ensure guests have a wonderful and relaxing experience.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Abu Tig Marina. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 35 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',NULL::text[]),
(93113,'Kamaran is a lively family neighborhood that presents multiple lifestyle amenities to explore and enjoy.','This 1 bedroom apartment is located in Gouna''s Kamaran community.

It features a spacious living room overlooking a Pool, a walk in fully equipped kitchen and 1 bedroom and sofa bed that can sleep 3 guests comfortably.

It also features a 55 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave.','Guests have access to the entire property','Kamaran is a lively family neighborhood that presents multiple lifestyle amenities to explore and enjoy.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',NULL::text[]),
(93114,'This gorgeous 2 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with free pool and beach access.','This gorgeous 2 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The 2 bedroom apartment comes with an open plan fully equipped kitchen, 2 full ensuite bathrooms and a living room  , not to mention a beautiful balcony that enjoys views of the pool.

It also features a 55 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & families.

The styling is made with a elegant and chic taste to ensure guests have a wonderful and relaxing experience.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Abu Tig Marina. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 35 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',NULL::text[]),
(93115,'This spacious 1 bedroom ground floor pool front apartment is located in Gouna''s only beachfront community with free pool and beach access and is managed by Xuru Stays.','This spacious 1 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The apartment is on the ground floor directly facing the pool and features an open plan fully equipped kitchen, 2 bathrooms and a living room. There is a bright and cozy outdoor furnished terrace, perfect for your morning coffee or late night relaxation.

It also features a 55 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & small families.

The styling of the apartment is tailored to give the guests a relaxing vibe.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Marina El Gouna. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',NULL::text[]),
(93116,'Scenic views, the utmost tranquility, and matchless convenience: are the characteristics of the rejuvenating escapades of Waterside Gouna.','Scenic views, the utmost tranquility, and matchless convenience: are the characteristics of the rejuvenating escapades of Waterside Gouna.
Your stay in Waterside Condos would be a perfect gateway to unwind, relax, and be in the heart of all the action happening in El Gouna.

It features a spacious living room overlooking the lagoon, a walk in fully equipped kitchen, 2 full bathrooms.
It also features a 55 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave.','Guests have access to the entire property','- Just minutes from Abu Tig marina (features many restaurants, cafes and bars)','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',NULL::text[]),
(93117,'This neutral pool & sea view 1 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with a  free pool and beach access.','This neutral pool & sea view 1 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with a  free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The 1 bedroom apartment comes with an open plan fully equipped kitchen, 1 full bathroom with 1 ensuite and a living room with a L shaped sofa bed, not to mention a beautiful large balcony and a rooftop terrace overlooking the pool. The unit is directly facing the pool and is enjoys a partial sea view as well.
It also features a 55 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples.

The styling is made vibrant to ensure guests have a wonderful and relaxing experience.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Abu Tig Marina. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',NULL::text[]),
(93118,'This glow 1 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with free pool and beach access.','This glow 1 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The 1 bedroom apartment comes with an open plan fully equipped kitchen, 1 full bathrooms, a guest bathroom with 1 and a living room , not to mention a beautiful bright furnished rooftop overlooking the pool.
It also features a 55 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples.

The styling is made with a modish and calming taste to ensure guests have a wonderful and relaxing experience.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Abu Tig Marina. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the ''Zouni'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna.','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',NULL::text[]),
(93119,'This spacious 1 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with free pool and beach access.','This spacious 1 bedroom apartment is located in Gouna''s only beachfront residence - Mangroovy with free pool and beach access. Mangroovy is closest to the Marina (10 min walk).

The apartment is on the ground floor and features an open plan fully equipped kitchen, 2 bathrooms and a living room. There is a bright and cozy outdoor furnished patio, perfect for your morning coffee or late night relaxation.

It also features a 55 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. The apartment is great for couples & small families.

The styling of the apartment is tailored to give the guests a relaxing vibe.','Guests have access to the entire apartment','-Mangroovy residence is uniquely located 800 meters from Marina El Gouna. Guests will be able to walk 10 minutes and get to it.
-''Bright Star'' supermarket is right in front of the residence towards the Marina.
-Mangroovy is home to the famous ''Noi'' beach lounge (located at Mangroovy''s beach)
- ''The Smokery'', a local favorite is also located 450 meters from the residence.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee 20 EGP).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',NULL::text[]),
(93120,'This cozy 1 bedroom studio is located in G-cribs with free pool access.','This cozy 1 bedroom studio is located in G-cribs with free pool access.
The 1 bedroom studio comes with an open plan fully equipped kitchen, 1 full bathroom.
It also features a 50 inch smart TV with Airplay and cable channels, a Nespresso machine, kettle and a microwave.
The styling is made with a modish and calming taste to ensure guests have a wonderful and relaxing experience.','Guests have access to the entire apartment','G Cribs is the comfort zone for those who want to discover more.
Each unit receives full access to all facilities and services G Cribs provides.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna.','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.
 Egyptian and Arab couples are required to provide marriage certificate, according to the Egyptian law. Foreign nationalities do not need a marriage certificate.',NULL::text[]),
(93121,'Kamaran is a lively family neighborhood that presents multiple lifestyle amenities to explore and enjoy.','This 1 bedroom apartment is located in Gouna''s Kamaran community.

It features a spacious living room overlooking a Pool, a walk in fully equipped kitchen and 1 bedroom and sofa bed that can sleep 3 guests comfortably.

It also features a 55 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave.','Guests have access to the entire property','Kamaran is a lively family neighborhood that presents multiple lifestyle amenities to explore and enjoy.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',NULL::text[]),
(93122,'Kamaran is a lively family neighborhood that presents multiple lifestyle amenities to explore and enjoy.','This 2 bedroom apartment is located in Gouna''s Kamaran community.

It features a spacious living room overlooking a Pool, a walk in fully equipped kitchen and 2 bedroom, main room with a queen size bed while the other one with 2 single beds that can sleep 4 guests comfortably.

It also features a 55 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave.','Guests have access to the entire property','Kamaran is a lively family neighborhood that presents multiple lifestyle amenities to explore and enjoy.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna (flat fee).','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',NULL::text[]),
(93123,'Welcome to Your Serene Bali Townhouse in El Gouna, Step into a space that feels like a deep exhale , a private escape in El Gouna’s Bali Compound, where tropical serenity meets contemporary elegance. Every detail is thoughtfully designed to bring warmth and calm , from sunlight dancing across handcrafted wood to the gentle sound of water by your private heated pool.','This two-floor boho-chic Townhouse combines natural textures, soft neutrals, and elegant simplicity.
on the top floor, you’ll find two spacious bedrooms, each with an en-suite bathroom, offering tranquility and privacy. The open-plan living area, kitchen, and dining space flow seamlessly together, bathed in warm natural light through floor-to-ceiling windows.
Step outside to your private heated swimming pool, surrounded by a comfortable lounge area and a dedicated outdoor bathroom — perfect for relaxing afternoons or cozy evenings under the stars.
On the ground floor, a separate studio-style room with its own kitchenette and bathroom offers flexibility and independence for guests or family members.

Every element of the townhouse reflects a refined boho-luxury aesthetic from soft linen curtains, earthy tones, wooden accents, and organic décor that radiate warmth and authenticity.
It’s a space that feels both grounded and charming, natural yet indulgent, relaxed yet sophisticated.','Guests have access to the entire 2 separate floor Townhouse and private pool.','Inspired by the serene spirit of Indonesia’s island life, Bali Compound brings a touch of tropical tranquility to the heart of El Gouna. Designed with a philosophy of simplicity, privacy, and harmony with nature, the compound blends modern architecture with Balinese aesthetics — featuring natural materials, lush greenery, and peaceful water elements throughout.
Located just minutes away from Abu Tig Marina, Downtown, and El Gouna’s pristine beaches, Bali offers both serenity and accessibility. Each villa is thoughtfully spaced to ensure calm, comfort, and a true sense of home.
With 24-hour security, landscaped pathways, and a community atmosphere, Bali Compound is more than just a residence — it’s a lifestyle. It captures the essence of island living while offering the luxury, convenience, and safety that define El Gouna’s exclusive developments.','Free outdoor parking is available.
Tuktuks are available to take you anywhere in El Gouna.','Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.
 Egyptian and Arab couples are required to provide marriage certificate, according to the Egyptian law. Foreign nationalities do not need a marriage certificate.',NULL::text[]),
(93124,'Your elevated stay at Mangroovy, El Gouna’s only beachfront residence — where laid-back luxury meets the Red Sea breeze.
This enriched 2-bedroom apartment offers direct access to both the pool and beach, combining comfort and convenience in one of Gouna’s most sought-after locations.','This enriched 2-bedroom apartment in Mangroovy — El Gouna’s only beachfront residence — is the ideal retreat for couples and families seeking relaxation with a touch of modern charm. With free access to both the beach and pool, and just a 10-minute walk from the Marina, it offers both serenity and convenience.

Inside, you’ll find:
✔️ Two thoughtfully designed bedrooms  and maid''s room with cozy beds and calming, stylish decor
✔️ Three full bathrooms, including one ensuite — with fresh towels provided
✔️ A welcoming living room with comfortable seating and natural light
✔️ An open-plan, fully equipped kitchen with a microwave, kettle, Nespresso machine, utensils, and washing machine
✔️ A private balcony — plus a spacious fully furnished Terrace Garden
✔️ A 55” Smart TV with AirPlay and cable channels
✔️ Complimentary bottled water and Nespresso coffee capsules
✔️ Access to Mangroovy’s exclusive beachfront and free swimming pools','✔️ Guests will have full private access to the apartment and all of its amenities during their stay
✔️ Guests will also enjoy access to compound facilities (pools, beaches, communal areas — subject to compound rules)
✔️ For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same compound or nearby.','Mangroovy is El Gouna’s only beachfront residence, uniquely located just 800 meters from Abu Tig Marina — about a 10-minute walk. Guests enjoy both convenience and exclusivity, with direct access to sandy beaches and some of Gouna’s best dining and lifestyle spots.

✔️ Wonderful location with direct access to El Gouna’s beaches
✔️ Abu Tig Marina – famous for yachts, fine dining, nightlife, and seaside strolls (10 min walk)
✔️ Bright Star supermarket – directly in front of the residence toward the Marina
✔️ ZOUNi Beach Lounge – located at Mangroovy’s beach
✔️ The Smokery – a local favorite, just 450 meters away
✔️ Downtown El Gouna – lively hub with restaurants, cafés, shops, bars, and supermarkets
✔️ Popular beach clubs and lounges nearby (charges may apply)
✔️ Wide range of water sports – kitesurfing, diving, and boat trips
✔️ Family-friendly facilities – shared pools, landscaped gardens, and outdoor spaces
✔️ Safe, gated community with 24/7 security
✔️ Everyday convenience – supermarkets, pharmacies, and essential services close by
✔️ Cultural and lifestyle events – film festivals, concerts, and exhibitions often hosted in El Gouna','✔️ Tuk-tuks are the most popular and convenient way to get around Gouna
✔️ Walking distance to beaches, restaurants, and supermarkets
✔️ Downtown El Gouna: 5–10 mins (cafes, supermarkets, pharmacies)
✔️ Abu Tig Marina: About a 10-minute walk (restaurants, shops, nightlife, yachts)
✔️ Gouna Conference Center & Golf Courses: 10–15 mins
✔️ El Gouna Hospital: 10–15 mins
✔️ Hurghada International Airport: 30–40 mins
✔️ Free Parking on premises','⚠️ Entry Requirements for El Gouna
✔️Egyptian nationals: National ID (front & back) + authentic proof of marriage (for couples)
✔️Arab nationals: Passport copy + authentic proof of marriage (for couples)
✔️Other nationalities: Passport copy only (no marriage proof required)

⚠️ If one partner is Egyptian/Arab and the other is not, proof of marriage is required
✔️ QR Codes for entry are issued by El Gouna Community Care. Please submit all required IDs 48 hours before check-in so we can arrange your entry QR.
Late submissions may cause delays or denial of entry. Approvals are fully at the discretion of El Gouna Community Care.
✔️ Smoking is only allowed outdoors (fine of $100 applies indoors)
✔️ Visitors are not permitted — only registered guests may enter
✔️ Please switch off AC and lights when leaving the apartment
✔️ Kindly leave the unit tidy upon checkout.',NULL::text[]),
(93125,'Your spacious retreat at Mangroovy, El Gouna’s only beachfront residence, where modern comfort meets Red Sea living.
This 3-bedroom apartment offers pool and beach view, making it the perfect base for families or groups to enjoy El Gouna’s vibrant seaside lifestyle.','This enriched 3-bedroom apartment in Mangroovy — El Gouna’s only beachfront residence — is the ideal retreat for couples and families seeking relaxation with a touch of modern charm. With free access to both the beach and pool, and just a 10-minute walk from the Marina, it offers both serenity and convenience.

Inside, you’ll find:
✔️ Three thoughtfully designed bedrooms  and maid''s room with cozy beds and calming, stylish decor
✔️ Three full bathrooms, including one ensuite and guest bath — with fresh towels provided
✔️ A welcoming living room with comfortable seating and natural light
✔️ An open-plan, fully equipped kitchen with a microwave, kettle, Nespresso machine, utensils, and washing machine
✔️ A private balcony — plus a spacious fully furnished Terrace Garden
✔️ A 55” Smart TV with AirPlay and cable channels
✔️ Complimentary bottled water and Nespresso coffee capsules
✔️ Access to Mangroovy’s exclusive beachfront and free swimming pools','✔️ Guests will have full private access to the apartment and all of its amenities during their stay
✔️ Guests will also enjoy access to compound facilities (pools, beaches, communal areas — subject to compound rules)
✔️ For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same compound or nearby.','Mangroovy is El Gouna’s only beachfront residence, uniquely located just 800 meters from Abu Tig Marina — about a 10-minute walk. Guests enjoy both convenience and exclusivity, with direct access to sandy beaches and some of Gouna’s best dining and lifestyle spots.

✔️ Wonderful location with direct access to El Gouna’s beaches
✔️ Abu Tig Marina – famous for yachts, fine dining, nightlife, and seaside strolls (10 min walk)
✔️ Bright Star supermarket – directly in front of the residence toward the Marina
✔️ ZOUNi Beach Lounge – located at Mangroovy’s beach
✔️ The Smokery – a local favorite, just 450 meters away
✔️ Downtown El Gouna – lively hub with restaurants, cafés, shops, bars, and supermarkets
✔️ Popular beach clubs and lounges nearby (charges may apply)
✔️ Wide range of water sports – kitesurfing, diving, and boat trips
✔️ Family-friendly facilities – shared pools, landscaped gardens, and outdoor spaces
✔️ Safe, gated community with 24/7 security
✔️ Everyday convenience – supermarkets, pharmacies, and essential services close by
✔️ Cultural and lifestyle events – film festivals, concerts, and exhibitions often hosted in El Gouna','✔️ Tuk-tuks are the most popular and convenient way to get around Gouna
✔️ Walking distance to beaches, restaurants, and supermarkets
✔️ Downtown El Gouna: 5–10 mins (cafes, supermarkets, pharmacies)
✔️ Abu Tig Marina: About a 10-minute walk (restaurants, shops, nightlife, yachts)
✔️ Gouna Conference Center & Golf Courses: 10–15 mins
✔️ El Gouna Hospital: 10–15 mins
✔️ Hurghada International Airport: 30–40 mins
✔️ Free Parking on premises','⚠️ Entry Requirements for El Gouna
✔️Egyptian nationals: National ID (front & back) + authentic proof of marriage (for couples)
✔️Arab nationals: Passport copy + authentic proof of marriage (for couples)
✔️Other nationalities: Passport copy only (no marriage proof required)

⚠️ If one partner is Egyptian/Arab and the other is not, proof of marriage is required
✔️ QR Codes for entry are issued by El Gouna Community Care. Please submit all required IDs 48 hours before check-in so we can arrange your entry QR.
Late submissions may cause delays or denial of entry. Approvals are fully at the discretion of El Gouna Community Care.
✔️ Smoking is only allowed outdoors (fine of $100 applies indoors)
✔️ Visitors are not permitted — only registered guests may enter
✔️ Please switch off AC and lights when leaving the apartment
✔️ Kindly leave the unit tidy upon checkout.',NULL::text[]),
(93126,'Your spacious retreat at Mangroovy, El Gouna’s only beachfront residence, where modern comfort meets Red Sea living.
This 3-bedroom apartment offers pool view, making it the perfect base for families or groups to enjoy El Gouna’s vibrant seaside lifestyle.','This enriched 3-bedroom apartment in Mangroovy — El Gouna’s only beachfront residence — is the ideal retreat for couples and families seeking relaxation with a touch of modern charm. With free access to both the beach and pool, and just a 10-minute walk from the Marina, it offers both serenity and convenience.

Inside, you’ll find:
✔️ Three thoughtfully designed bedrooms with cozy beds and calming, stylish decor
✔️ Four full bathrooms, including three ensuite — with fresh towels provided
✔️ A welcoming living room with comfortable seating and natural light
✔️ An open-plan, fully equipped kitchen with a microwave, kettle, Nespresso machine, utensils, and washing machine
✔️ A private balcony — plus a spacious fully furnished Terrace Garden
✔️ A 55” Smart TV with AirPlay and cable channels
✔️ Complimentary bottled water and Nespresso coffee capsules
✔️ Access to Mangroovy’s exclusive beachfront and free swimming pools','✔️ Guests will have full private access to the apartment and all of its amenities during their stay
✔️ Guests will also enjoy access to compound facilities (pools, beaches, communal areas — subject to compound rules)
✔️ For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same compound or nearby.','Mangroovy is El Gouna’s only beachfront residence, uniquely located just 800 meters from Abu Tig Marina — about a 10-minute walk. Guests enjoy both convenience and exclusivity, with direct access to sandy beaches and some of Gouna’s best dining and lifestyle spots.

✔️ Wonderful location with direct access to El Gouna’s beaches
✔️ Abu Tig Marina – famous for yachts, fine dining, nightlife, and seaside strolls (10 min walk)
✔️ Bright Star supermarket – directly in front of the residence toward the Marina
✔️ ZOUNi Beach Lounge – located at Mangroovy’s beach
✔️ The Smokery – a local favorite, just 450 meters away
✔️ Downtown El Gouna – lively hub with restaurants, cafés, shops, bars, and supermarkets
✔️ Popular beach clubs and lounges nearby (charges may apply)
✔️ Wide range of water sports – kitesurfing, diving, and boat trips
✔️ Family-friendly facilities – shared pools, landscaped gardens, and outdoor spaces
✔️ Safe, gated community with 24/7 security
✔️ Everyday convenience – supermarkets, pharmacies, and essential services close by
✔️ Cultural and lifestyle events – film festivals, concerts, and exhibitions often hosted in El Gouna','✔️ Tuk-tuks are the most popular and convenient way to get around Gouna
✔️ Walking distance to beaches, restaurants, and supermarkets
✔️ Downtown El Gouna: 5–10 mins (cafes, supermarkets, pharmacies)
✔️ Abu Tig Marina: About a 10-minute walk (restaurants, shops, nightlife, yachts)
✔️ Gouna Conference Center & Golf Courses: 10–15 mins
✔️ El Gouna Hospital: 10–15 mins
✔️ Hurghada International Airport: 30–40 mins
✔️ Free Parking on premises','⚠️ Entry Requirements for El Gouna
✔️Egyptian nationals: National ID (front & back) + authentic proof of marriage (for couples)
✔️Arab nationals: Passport copy + authentic proof of marriage (for couples)
✔️Other nationalities: Passport copy only (no marriage proof required)

⚠️ If one partner is Egyptian/Arab and the other is not, proof of marriage is required
✔️ QR Codes for entry are issued by El Gouna Community Care. Please submit all required IDs 48 hours before check-in so we can arrange your entry QR.
Late submissions may cause delays or denial of entry. Approvals are fully at the discretion of El Gouna Community Care.
✔️ Smoking is only allowed outdoors (fine of $100 applies indoors)
✔️ Visitors are not permitted — only registered guests may enter
✔️ Please switch off AC and lights when leaving the apartment
✔️ Kindly leave the unit tidy upon checkout.',NULL::text[]),
(93127,'This waterfront 2 bedroom apartment is located in Gouna''s beloved Ancient Sands community— is the ideal retreat for couples and families seeking relaxation with a touch of modern charm, it offers both serenity and convenience.','This enriched 2-bedroom apartment in Ancient Sands With free access to pool, and just a 15-minute walk from the Marina.

Inside, you’ll find:
✔️ Two thoughtfully designed bedrooms with cozy beds and calming, stylish decor
✔️ Two full ensuite  bathrooms, and one for guests — with fresh towels provided
✔️ A welcoming living room with comfortable seating and natural light
✔️ An open-plan, fully equipped kitchen with a microwave, kettle, Nespresso machine, utensils, and washing machine
✔️ A private balcony
✔️ A 55” Smart TV with AirPlay and cable channels
✔️ Complimentary bottled water and Nespresso coffee capsules','✔️ Guests will have full private access to the apartment and all of its amenities during their stay
✔️ Guests will also enjoy access to compound facilities (pools, communal areas — subject to compound rules)
✔️ For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same compound or nearby.','Ancient Sands is El Gouna''s elite community uniquely located just 15min from Abu Tig Marina, Guests enjoy both convenience and exclusivity, with direct access to sandy beaches and some of Gouna’s best dining and lifestyle spots.

✔️ Wonderful location with direct access to El Gouna’s beaches
✔️ Abu Tig Marina – famous for yachts, fine dining, nightlife, and seaside strolls (15 min walk)
✔️ Bright Star supermarket – directly in front of the residence toward the Marina
✔️ ZOUNi Beach Lounge – (15 min walk)
✔️ The Smokery – a local favorite, just 2 kilo meters away
✔️ Downtown El Gouna – lively hub with restaurants, cafés, shops, bars, and supermarkets
✔️ Popular beach clubs and lounges nearby (charges may apply)
✔️ Wide range of water sports – kitesurfing, diving, and boat trips
✔️ Family-friendly facilities – shared pools, landscaped gardens, and outdoor spaces
✔️ Safe, gated community with 24/7 security
✔️ Everyday convenience – supermarkets, pharmacies, and essential services close by
✔️ Cultural and lifestyle events – film festivals, concerts, and exhibitions often hosted in El Gouna','✔️ Tuk-tuks are the most popular and convenient way to get around Gouna
✔️ Walking distance to beaches, restaurants, and supermarkets
✔️ Downtown El Gouna: 10–15 mins (cafes, supermarkets, pharmacies)
✔️ Abu Tig Marina: About a 15-minute walk (restaurants, shops, nightlife, yachts)
✔️ Gouna Conference Center & Golf Courses: 10–15 mins
✔️ El Gouna Hospital: 10–15 mins
✔️ Hurghada International Airport: 30–40 mins
✔️ Free Parking on premises','⚠️ Entry Requirements for El Gouna
✔️Egyptian nationals: National ID (front & back) + authentic proof of marriage (for couples)
✔️Arab nationals: Passport copy + authentic proof of marriage (for couples)
✔️Other nationalities: Passport copy only (no marriage proof required)

⚠️ If one partner is Egyptian/Arab and the other is not, proof of marriage is required
✔️ QR Codes for entry are issued by El Gouna Community Care. Please submit all required IDs 48 hours before check-in so we can arrange your entry QR.
Late submissions may cause delays or denial of entry. Approvals are fully at the discretion of El Gouna Community Care.
✔️ Smoking is only allowed outdoors (fine of $100 applies indoors)
✔️ Visitors are not permitted — only registered guests may enter
✔️ Please switch off AC and lights when leaving the apartment
✔️ Kindly leave the unit tidy upon checkout.',NULL::text[]),
(93128,'Your elevated stay at Mangroovy, El Gouna’s only beachfront residence — where laid-back luxury meets the Red Sea breeze.','This trendy 2-bedroom apartment offers direct access to both the pool and beach, combining comfort and convenience in one of Gouna’s most sought-after locations.

Inside, you’ll find:
✔️ Two thoughtfully designed bedrooms with cozy beds and calming, stylish decor
✔️ Two full bathrooms, including one ensuite — with fresh towels provided
✔️ A welcoming living room with comfortable seating and natural light
✔️ An open-plan, fully equipped kitchen with a microwave, kettle, Nespresso machine, utensils, and washing machine
✔️ A private balcony — plus a spacious fully furnished rooftop with pool view
✔️ A 55” Smart TV with AirPlay and cable channels
✔️ Complimentary bottled water and Nespresso coffee capsules
✔️ Access to Mangroovy’s exclusive beachfront and free swimming pools','✔️ Guests will have full private access to the apartment and all of its amenities during their stay
✔️ Guests will also enjoy access to compound facilities (pools, beaches, communal areas — subject to compound rules)
✔️ For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same compound or nearby.','Mangroovy is El Gouna’s only beachfront residence, uniquely located just 800 meters from Abu Tig Marina — about a 10-minute walk. Guests enjoy both convenience and exclusivity, with direct access to sandy beaches and some of Gouna’s best dining and lifestyle spots.

✔️ Wonderful location with direct access to El Gouna’s beaches
✔️ Abu Tig Marina – famous for yachts, fine dining, nightlife, and seaside strolls (10 min walk)
✔️ Bright Star supermarket – directly in front of the residence toward the Marina
✔️ ZOUNi Beach Lounge – located at Mangroovy’s beach
✔️ The Smokery – a local favorite, just 450 meters away
✔️ Downtown El Gouna – lively hub with restaurants, cafés, shops, bars, and supermarkets
✔️ Popular beach clubs and lounges nearby (charges may apply)
✔️ Wide range of water sports – kitesurfing, diving, and boat trips
✔️ Family-friendly facilities – shared pools, landscaped gardens, and outdoor spaces
✔️ Safe, gated community with 24/7 security
✔️ Everyday convenience – supermarkets, pharmacies, and essential services close by
✔️ Cultural and lifestyle events – film festivals, concerts, and exhibitions often hosted in El Gouna','✔️ Tuk-tuks are the most popular and convenient way to get around Gouna
✔️ Walking distance to beaches, restaurants, and supermarkets
✔️ Downtown El Gouna: 5–10 mins (cafes, supermarkets, pharmacies)
✔️ Abu Tig Marina: About a 10-minute walk (restaurants, shops, nightlife, yachts)
✔️ Gouna Conference Center & Golf Courses: 10–15 mins
✔️ El Gouna Hospital: 10–15 mins
✔️ Hurghada International Airport: 30–40 mins
✔️ Free Parking on premises','⚠️ Entry Requirements for El Gouna
✔️Egyptian nationals: National ID (front & back) + authentic proof of marriage (for couples)
✔️Arab nationals: Passport copy + authentic proof of marriage (for couples)
✔️Other nationalities: Passport copy only (no marriage proof required)

⚠️ If one partner is Egyptian/Arab and the other is not, proof of marriage is required
✔️ QR Codes for entry are issued by El Gouna Community Care. Please submit all required IDs 48 hours before check-in so we can arrange your entry QR.
Late submissions may cause delays or denial of entry. Approvals are fully at the discretion of El Gouna Community Care.
✔️ Smoking is only allowed outdoors (fine of $100 applies indoors)
✔️ Visitors are not permitted — only registered guests may enter
✔️ Please switch off AC and lights when leaving the apartment
✔️ Kindly leave the unit tidy upon checkout.',NULL::text[]),
(93129,'Your elevated stay at Mangroovy, El Gouna’s only beachfront residence — where laid-back luxury meets the Red Sea breeze.
This enriched 2-bedroom apartment offers direct access to both the pool and beach, combining comfort and convenience in one of Gouna’s most sought-after locations.','This enriched 2-bedroom apartment in Mangroovy — El Gouna’s only beachfront residence — is the ideal retreat for couples and families seeking relaxation with a touch of modern charm. With free access to both the beach and pool, and just a 10-minute walk from the Marina, it offers both serenity and convenience.

Inside, you’ll find:
✔️ Two thoughtfully designed bedrooms with cozy beds and calming, stylish decor
✔️ Two full bathrooms, including one ensuite — with fresh towels provided
✔️ A welcoming living room with comfortable seating and natural light
✔️ An open-plan, fully equipped kitchen with a microwave, kettle, Nespresso machine, utensils, and washing machine
✔️ A private balcony — plus a spacious fully furnished Terrace Garden
✔️ A 55” Smart TV with AirPlay and cable channels
✔️ Complimentary bottled water and Nespresso coffee capsules
✔️ Access to Mangroovy’s exclusive beachfront and free swimming pools','✔️ Guests will have full private access to the apartment and all of its amenities during their stay
✔️ Guests will also enjoy access to compound facilities (pools, beaches, communal areas — subject to compound rules)
✔️ For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same compound or nearby.','Mangroovy is El Gouna’s only beachfront residence, uniquely located just 800 meters from Abu Tig Marina — about a 10-minute walk. Guests enjoy both convenience and exclusivity, with direct access to sandy beaches and some of Gouna’s best dining and lifestyle spots.

✔️ Wonderful location with direct access to El Gouna’s beaches
✔️ Abu Tig Marina – famous for yachts, fine dining, nightlife, and seaside strolls (10 min walk)
✔️ Bright Star supermarket – directly in front of the residence toward the Marina
✔️ ZOUNi Beach Lounge – located at Mangroovy’s beach
✔️ The Smokery – a local favorite, just 450 meters away
✔️ Downtown El Gouna – lively hub with restaurants, cafés, shops, bars, and supermarkets
✔️ Popular beach clubs and lounges nearby (charges may apply)
✔️ Wide range of water sports – kitesurfing, diving, and boat trips
✔️ Family-friendly facilities – shared pools, landscaped gardens, and outdoor spaces
✔️ Safe, gated community with 24/7 security
✔️ Everyday convenience – supermarkets, pharmacies, and essential services close by
✔️ Cultural and lifestyle events – film festivals, concerts, and exhibitions often hosted in El Gouna','✔️ Tuk-tuks are the most popular and convenient way to get around Gouna
✔️ Walking distance to beaches, restaurants, and supermarkets
✔️ Downtown El Gouna: 5–10 mins (cafes, supermarkets, pharmacies)
✔️ Abu Tig Marina: About a 10-minute walk (restaurants, shops, nightlife, yachts)
✔️ Gouna Conference Center & Golf Courses: 10–15 mins
✔️ El Gouna Hospital: 10–15 mins
✔️ Hurghada International Airport: 30–40 mins
✔️ Free Parking on premises','⚠️ Entry Requirements for El Gouna
✔️Egyptian nationals: National ID (front & back) + authentic proof of marriage (for couples)
✔️Arab nationals: Passport copy + authentic proof of marriage (for couples)
✔️Other nationalities: Passport copy only (no marriage proof required)

⚠️ If one partner is Egyptian/Arab and the other is not, proof of marriage is required
✔️ QR Codes for entry are issued by El Gouna Community Care. Please submit all required IDs 48 hours before check-in so we can arrange your entry QR.
Late submissions may cause delays or denial of entry. Approvals are fully at the discretion of El Gouna Community Care.
✔️ Smoking is only allowed outdoors (fine of $100 applies indoors)
✔️ Visitors are not permitted — only registered guests may enter
✔️ Please switch off AC and lights when leaving the apartment
✔️ Kindly leave the unit tidy upon checkout.',NULL::text[]),
(93130,'This waterfront 3 bedroom Villa is located in Gouna''s beloved Ancient Hills community— is the ideal retreat for couples and families seeking relaxation with a touch of modern charm, it offers both serenity and convenience.','This enriched 3-bedroom villa in Ancient Hills With a private pool.

Inside, you’ll find:
✔️ Three thoughtfully designed bedrooms with cozy beds and calming, stylish decor
✔️ Two full  bathrooms with one ensuite, and one for guests — with fresh towels provided
✔️ A welcoming living room with comfortable seating and natural light
✔️ An open-plan, fully equipped kitchen with a microwave, kettle, Nespresso machine, utensils, and washing machine
✔️ A private terrace
✔️ A 55” Smart TV with AirPlay and cable channels
✔️ Complimentary bottled water and Nespresso coffee capsules','✔️ Guests will have full private access to the apartment and all of its amenities during their stay
✔️ Guests will also enjoy access to compound facilities (private pool, communal areas — subject to compound rules)
✔️ For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same compound or nearby.','Ancient Hills is El Gouna''s elite community uniquely located just 20min from Abu Tig Marina, Guests enjoy both convenience and exclusivity, some of Gouna’s best dining and lifestyle spots.

✔️ Wonderful location with amazing lagoon front
✔️ Abu Tig Marina – famous for yachts, fine dining, nightlife, and seaside strolls (20 min walk)
✔️ The Smokery – a local favorite, just 2 kilo meters away
✔️ Downtown El Gouna – lively hub with restaurants, cafés, shops, bars, and supermarkets
✔️ Popular beach clubs and lounges nearby (charges may apply)
✔️ Wide range of water sports – kitesurfing, diving, and boat trips
✔️ Family-friendly facilities – private pool, landscaped gardens, and outdoor spaces
✔️ Safe, gated community with 24/7 security
✔️ Everyday convenience – supermarkets, pharmacies, and essential services close by
✔️ Cultural and lifestyle events – film festivals, concerts, and exhibitions often hosted in El Gouna','✔️ Tuk-tuks are the most popular and convenient way to get around Gouna
✔️ Walking distance to lagoon, restaurants, and supermarkets
✔️ Downtown El Gouna: 15–25 mins (cafes, supermarkets, pharmacies)
✔️ Abu Tig Marina: About a 30-minute walk (restaurants, shops, nightlife, yachts)
✔️ Gouna Conference Center & Golf Courses: 10–20 mins
✔️ El Gouna Hospital: 15–25 mins
✔️ Hurghada International Airport: 30–40 mins
✔️ Free Parking on premises','⚠️ Entry Requirements for El Gouna
✔️Egyptian nationals: National ID (front & back) + authentic proof of marriage (for couples)
✔️Arab nationals: Passport copy + authentic proof of marriage (for couples)
✔️Other nationalities: Passport copy only (no marriage proof required)

⚠️ If one partner is Egyptian/Arab and the other is not, proof of marriage is required
✔️ QR Codes for entry are issued by El Gouna Community Care. Please submit all required IDs 48 hours before check-in so we can arrange your entry QR.
Late submissions may cause delays or denial of entry. Approvals are fully at the discretion of El Gouna Community Care.
✔️ Smoking is only allowed outdoors (fine of $100 applies indoors)
✔️ Visitors are not permitted — only registered guests may enter
✔️ Please switch off AC and lights when leaving the apartment
✔️ Kindly leave the unit tidy upon checkout.',NULL::text[]),
(93131,'Welcome to Pyramids Apartments, your private view of the timeless Giza Pyramids. Soak in the beauty of the pyramids by day, then unwind in your own private in-room jacuzzi by night.','This bright and cozy studio is designed for relaxation and comfort  the perfect retreat after a day spent exploring the pyramids and the vibrant streets of Giza.
Inside, you’ll find:

✔️ A private indoor jacuzzi, thoroughly cleaned and sanitized before every stay
✔️ One queen-sized bed with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A compact kitchenette for light meal preparation
✔️ Free Wi-Fi, Cable TV, and Chromecast
✔️ A Nespresso machine
✔️ Complimentary bottled water and two coffee capsules','✔️Guests will have full private access to the Apartment and all of its amenities during their stay.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','⚠️Please note that occasional water or electricity outages may also occur due to local infrastructure maintenance. These are usually resolved quickly, we appreciate your understanding.

✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','⚠️ Electricity or water outages may occasionally occur due to infrastructure maintenance in the area. While this is beyond our control, we’ll do our best to assist you if it affects your stay.

✔️The rooftop is part of the building but not managed or maintained by us. We are not responsible for its access, safety, or cleanliness.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.',ARRAY['Fridge','Heating','Fire extinguisher','Tv','Elevator','Microwave','Full Equipped Kitchen','Smoke detector','First aid kit','WiFi Internet','Laptop Friendly Workspace','Ironing equipment','Coffee Maker','Bed Linens/Towels','Private entrance','Air Conditioning','Hangers','Hair Dryer','Satellite Or Cable','Jacuzzi','Essentials','Carbon monoxide detector','Kettle','Kids Friendly','Smoking Forbidden','Baby crib','Bottled Water','Self Check-in']::text[]),
(93132,'Welcome to one of the most iconic stays in Giza, with unmatched views of the Pyramids. Enjoy the breathtaking sight of all three pyramids from anywhere inside this modern oriental studio, or while relaxing in your private in-room jacuzzi.','This bright and cozy studio is designed for relaxation and comfort  the perfect retreat after a day spent exploring the pyramids and the vibrant streets of Giza.
Inside, you’ll find:

✔️ A private indoor jacuzzi, thoroughly cleaned and sanitized before every stay
✔️ One queen-sized bed with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A compact kitchenette for light meal preparation
✔️ Free Wi-Fi, Cable TV, and Chromecast
✔️ A Nespresso machine
✔️ Complimentary bottled water and two coffee capsules','✔️Guests will have full private access to the Apartment and all of its amenities during their stay.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','⚠️Please note that occasional water or electricity outages may also occur due to local infrastructure maintenance. These are usually resolved quickly, we appreciate your understanding.

✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate, perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.

⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','⚠️ Electricity or water outages may occasionally occur due to infrastructure maintenance in the area. While this is beyond our control, we’ll do our best to assist you if it affects your stay.

✔️The rooftop is part of the building but not managed or maintained by us. We are not responsible for its access, safety, or cleanliness.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.',ARRAY['Fridge','Heating','Fire extinguisher','Tv','Elevator','Microwave','Full Equipped Kitchen','Smoke detector','First aid kit','WiFi Internet','Laptop Friendly Workspace','Ironing equipment','Coffee Maker','Bed Linens/Towels','Private entrance','Air Conditioning','Hangers','Hair Dryer','Satellite Or Cable','Jacuzzi','Essentials','Carbon monoxide detector','Kettle','Kids Friendly','Smoking Forbidden','Baby crib','Bottled Water','Self Check-in']::text[]),
(93133,'Step into Pyramids Apartments, where ancient wonders meet modern comfort, Start your day with pyramid views from your window, and end it soaking in your own private in-room jacuzzi.','This bright and cozy apartment is designed for relaxation and comfort, perfect after a full day exploring the pyramids and the lively streets of Giza.
Inside, you’ll find:

✔️ A private indoor jacuzzi, thoroughly cleaned and sanitized before every stay
✔️ One Queen-sized bed with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A compact kitchenette for light meal preparation
✔️ Free Wi-Fi, Cable TV, and Chromecast
✔️ A Nespresso machine
✔️ Complimentary bottled water and two coffee capsules','✔️Guests will have full private access to the Apartment and all of its amenities during their stay.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','⚠️Please note that occasional water or electricity outages may also occur due to local infrastructure maintenance. These are usually resolved quickly, we appreciate your understanding.

✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate, perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services: We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.

⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','Please note that outside visitors are not allowed. Only guests that are included in a reservation and have submitted their proof of identity will be allowed access to the property.',ARRAY['Tv','Full Equipped Kitchen','Heating','Bed Linens/Towels','Hangers','WiFi Internet','Jacuzzi','Smoke detector','Carbon monoxide detector','Hair Dryer','Satellite Or Cable','Microwave','Laptop Friendly Workspace','Essentials','Ironing equipment','Air Conditioning','First aid kit','Elevator','Coffee Maker','Fire extinguisher','Private entrance','Kids Friendly','Self Check-in','Bottled Water','Kettle','Baby crib','Smoking Forbidden']::text[]),
(93134,'Step into Pyramids Apartments, where ancient wonders meet modern comfort, Start your day with pyramid views from your window, and end it soaking in your own private in-room jacuzzi.','This bright and cozy apartment is designed for relaxation and comfort, perfect after a full day exploring the pyramids and the lively streets of Giza.
Inside, you’ll find:

✔️ A private indoor jacuzzi, thoroughly cleaned and sanitized before every stay
✔️ One Queen-sized bed with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A compact kitchenette for light meal preparation
✔️ Free Wi-Fi, Cable TV, and Chromecast
✔️ A Nespresso machine
✔️ Complimentary bottled water and two coffee capsules','✔️Guests will have full private access to the Apartment and all of its amenities during their stay.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','⚠️Please note that occasional water or electricity outages may also occur due to local infrastructure maintenance. These are usually resolved quickly, we appreciate your understanding.

✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate, perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services: We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.

⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','Please note that outside visitors are not allowed. Only guests that are included in a reservation and have submitted their proof of identity will be allowed access to the property.',ARRAY['Tv','Full Equipped Kitchen','Fridge','Heating','Bed Linens/Towels','Hangers','WiFi Internet','Jacuzzi','Smoke detector','Carbon monoxide detector','Hair Dryer','Satellite Or Cable','Microwave','Laptop Friendly Workspace','Essentials','Ironing equipment','Air Conditioning','First aid kit','Elevator','Coffee Maker','Fire extinguisher','Private entrance','Kids Friendly','Self Check-in','Bottled Water','Freezer','Kettle','24 Hour Check-in','Baby crib','Smoking Forbidden','Kitchenette','Stove','Wine glasses','Extra pillows and blankets','Professionally cleaned','Wardrobe','Gated property','Locked bedroom(s)','Social distancing','No single-use plastic ','No single-use toiletries','Paperless / recycled paper','Luxury linen','Downtown','Town','Cleaning before checkout','Luggage storage','Suitable For Children (2+ years old)','Suitable For Infants (under 2 years)','Shopping','Cleaning and disinfection','Contactless check-in and check-out','Hot water']::text[]),
(93135,'This mind-blowing 2 bedroom apartment is a stone''s throw from the Giza Pyramids and is managed by Xuru Stays - Egypt''s Top Property Management Company','This fascinating 2 bedroom apartment is located in Giza''s district (Nazlet Al Semman) which the closest to the Giza Pyramids.

The apartment comes with an open plan fully equipped kitchen, a full bathroom, a half bathroom and a living room with a large sofa. It is made up of two separate bedrooms (one with a queen size bed and the other is a 2 single bed).

It also features a 55 inch smart TV with Airplay and cable channels, washing machine, a Nespresso machine, kettle and a microwave. Not to mention the fabulous balcony which features a proximate, uninterrupted view of the Giza Pyramid! The apartment is great for couples & small families.

The styling is made with a retro yet modern twist to enhance the experience of the visiting guests.

- There is 1.5 bathroom, kitchenette and two bedrooms.
- Fresh, laundered hotel-grade pure Egyptian cotton linen, along with face & body crisp clean towels are provided.
- A dining table is also available to use.
- Wifi, and Smart TV are also available and free of charge.
- Nespresso machine.
- 2 complimentary bottles of water & 2 coffee capsules.','This is an 2 bedroom apartment and guests can have access to all of its features.','A 5 min walk from the Pyramids gate entrance.
This unit is located in a new building in an authentic very local but also very safe neighborhood. For this reason nearby streets are not all yet paved. Guests can expect it to busy (as it is all around Cairo ; ) )
There is a pharmacy, supermarket and a bazaar (gift shop) within 1 min walking distance from this building.
Street dogs are likely to bark late at night which might be inconvenient for some guests.

Please note that this apartment is located in a local and modest neighborhood. Guests staying should expect that the surrounding areas to the building are not of high standards. However, the studio apartment is highly well maintained and sparkling clean as shown in the photos','- Airport pickup / drop off
We provide pickup and drop off for a competitive rate.
- Tours
We provide unique tours and excursions at very competitive prices.','Please note that outside visitors are not allowed. Only guests that are included in a reservation and have submitted their proof of identity will be allowed access to the property.
Please note that smoking is not allowed inside the apartment. A fine of $100 may be imposed in case of smoking indoors.',ARRAY['Heating','Freezer','Fridge','Full Equipped Kitchen','Bottled Water','Hot water','Coffee Maker','Air Conditioning','Balcony','Bed Linens/Towels','Hair Dryer','Kids Friendly','Microwave','Oven','Satellite Or Cable','Smoking Forbidden','Terrace','Tv','Elevator','24 Hour Check-in','WiFi Internet','Ironing equipment','Essentials','Smoke detector','Carbon monoxide detector','Hangers','Self Check-in','No single-use plastic ','No single-use toiletries','Towels changed upon request','Stove','Wine glasses','Luxury linen','Cleaning and disinfection','Suitable For Infants (under 2 years)','Suitable For Children (2+ years old)','Street parking']::text[]),
(93136,'Welcome to the Pyramids Boutique Apartments The best place to enjoy a great view of the Magical Pyramids Of Giza!!','-This bright studio features a bright, sparkling clean jacuzzi where guests can chill in warm water after a long day of walking in the busy streets of Giza.

- There is a bathroom, kitchenette, and a comfortable king size bed.
- Fresh, laundered hotel-grade pure Egyptian cotton linen, along with face & body crisp clean towels are provided.
- A small dining table is also available to use.
- Wi-Fi, Cable TV, & Chrome Cast are also available and free of charge.
- Nespresso machine.
- Complimentary water, juice, & 2 coffee capsules.','This is an entire studio, and guests can have access to all of its features.

For bigger groups, please contact us as additional units might be available.','A 5 min walk from the Pyramids gate entrance.
This unit is located in a new building in an authentic very local but also very safe neighbourhood. For this reason, nearby streets are not all yet paved. Guests can expect it to busy (as it is all around Cairo ; ) )
There is a pharmacy, supermarket and a bazaar (gift shop) within 1 min walking distance from this building.

Please note that this studio is located in a local and modest neighbourhood. Guests staying should expect that the surrounding areas to the building are not of high standards. However, the studio apartment is highly well maintained and sparkling clean as shown in the photos.','- Airport pickup / drop off
We provide pickup and drop off for a competitive rate.
- Tours
We provide unique tours and excursions at very competitive prices.','Please note that outside visitors are not allowed. Only guests that are included in a reservation and have submitted their proof of identity will be allowed access to the property.',NULL::text[]),
(93137,'Welcome to the Pyramids Boutique Apartments The best place to enjoy a great view of the Magical Pyramids Of Giza!!','-This bright apartment features a bright, sparkling clean jacuzzi where guests can chill in warm water after a long day of walking in the busy streets of Giza.

- The first bed room is a master bedroom with full bathroom and kitchenette.
- The second room is an extra external room with cozy living room, full bathroom and kitchenette.
- Moving from the main room to the extra external room is from a small sharing corridor.
- Fresh, laundered hotel-grade pure Egyptian cotton linen, along with face & body crisp clean towels are provided.
- A small dining table is also available to use.
- Wi-Fi, Cable TV, & Chrome Cast are also available and free of charge.
- Nespresso machine.
- Complimentary water, juice, & 2 coffee capsules.
- Please note that there is a small sharing corridor between the main and extra external room.','This is an entire apartment, and guests can have access to all of its features.
For bigger groups, please contact us as additional units might be available.','A 5 min walk from the Pyramids gate entrance.
This unit is located in a new building in an authentic very local but also very safe neighbourhood. For this reason, nearby streets are not all yet paved. Guests can expect it to busy (as it is all around Cairo ; ) )
There is a pharmacy, supermarket and a bazaar (gift shop) within 1 min walking distance from this building.

Please note that this apartment is located in a local and modest neighbourhood. Guests staying should expect that the surrounding areas to the building are not of high standards. However, the apartment is highly well maintained and sparkling clean as shown in the photos.','- Airport pickup / drop off
We provide pickup and drop off for a competitive rate.
- Tours
We provide unique tours and excursions at very competitive prices.','Please note that outside visitors are not allowed. Only guests that are included in a reservation and have submitted their proof of identity will be allowed access to the property.
Please note that there is a small sharing corridor between the main and extra external room.',NULL::text[]),
(93138,'Welcome to the Pyramids Boutique Apartments — the perfect place to enjoy a stunning view of the Magical Pyramids of Giza, Whether you''re here for adventure or relaxation, our thoughtfully prepared space offers a comfortable and authentic local experience.','This bright and cozy apartment is designed for relaxation and comfort — perfect after a full day exploring the pyramids and the lively streets of Giza.

Inside, you’ll find:

✔️A private indoor jacuzzi, cleaned and sanitized before every stay
✔️Two king-sized beds with hotel-grade Egyptian cotton linens
✔️A bathroom stocked with fresh face and body towels
✔️A compact kitchenette for light meal prep
✔️A small dining table
✔️Wi-Fi, Cable TV, and Chrome Cast — all free of charge
✔️A Nespresso machine
✔️Complimentary bottled water, and two coffee capsules','✔️Guests will have full private access to the Apartment and all of its amenities during their stay.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','⚠️Please note that occasional water or electricity outages may also occur due to local infrastructure maintenance. These are usually resolved quickly, we appreciate your understanding.

✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.

⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','⚠️ Electricity or water outages may occasionally occur due to infrastructure maintenance in the area. While this is beyond our control, we’ll do our best to assist you if it affects your stay.

✔️The rooftop is part of the building but not managed or maintained by us. We are not responsible for its access, safety, or cleanliness.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.
✔️ Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
✔️ Only registered guests are allowed inside the unit. No unapproved visitors.
✔️ Proof of marriage is required for Egyptian and Arab nationals.
✔️ ID or passport copies for all guests must be submitted before check-in.
✔️ Please respect neighbors and shared spaces at all times.',NULL::text[]),
(93139,'Welcome to Pyramids Lofts, your private view of the timeless Giza Pyramids. Soak in the beauty of the pyramids by day, then unwind in your amazing rooftop access by night.','This bright and cozy suite is designed for relaxation and comfort the perfect retreat after a day spent exploring the pyramids and the vibrant streets of Giza.
Inside, you’ll find:

✔️ One queen-sized bed with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A mini bar fridge with a Complimentary bottled water
✔️ Free Wi-Fi, Cable TV
✔️ A Kettle machine','✔️Guests will have full private access to the Studio and all of its amenities during their stay.
✔️Free Access to our amazing rooftop while food and beverage with extra fees.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.',NULL::text[]),
(93140,'Welcome to Pyramids Lofts, your private view of the timeless Giza Pyramids. Soak in the beauty of the pyramids by day, then unwind in your amazing rooftop access by night.','This bright and cozy loft is designed for relaxation and comfort  the perfect retreat after a day spent exploring the pyramids and the vibrant streets of Giza.
Inside, you’ll find:

✔️ One queen-sized bed with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A mini bar fridge with a Complimentary bottled water
✔️ Free Wi-Fi, Cable TV
✔️ A Kettle machine','✔️Guests will have full private access to the Studio and all of its amenities during their stay.
✔️Free Access to our amazing rooftop while food and beverage with extra fees.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.',NULL::text[]),
(93141,'Welcome to Pyramids Lofts, your private view of the timeless Giza Pyramids. Soak in the beauty of the pyramids by day, then unwind in your amazing rooftop access by night.','This bright and cozy loft is designed for relaxation and comfort  the perfect retreat after a day spent exploring the pyramids and the vibrant streets of Giza.
Inside, you’ll find:

✔️ Two single beds with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A mini bar fridge with a Complimentary bottled water
✔️ Free Wi-Fi, Cable TV
✔️ A Kettle machine','✔️Guests will have full private access to the Studio and all of its amenities during their stay.
✔️Free Access to our amazing rooftop while food and beverage with extra fees.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.',NULL::text[]),
(93142,'Welcome to Pyramids Lofts, your private view of the timeless Giza Pyramids. Soak in the beauty of the pyramids by day, then unwind in your amazing rooftop access by night.','This bright and cozy loft is designed for relaxation and comfort  the perfect retreat after a day spent exploring the pyramids and the vibrant streets of Giza.
Inside, you’ll find:

✔️ One Single-sized bed with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A mini bar fridge with a Complimentary bottled water
✔️ Free Wi-Fi, Cable TV
✔️ A Kettle machine','✔️Guests will have full private access to the Studio and all of its amenities during their stay.
✔️Free Access to our amazing rooftop while food and beverage with extra fees.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.',NULL::text[]),
(93143,'Welcome to Pyramids Lofts, your private view of the timeless Giza Pyramids. Soak in the beauty of the pyramids by day, then unwind in your amazing rooftop access by night.','This bright and cozy loft is designed for relaxation and comfort  the perfect retreat after a day spent exploring the pyramids and the vibrant streets of Giza.
Inside, you’ll find:

✔️ One Single-sized bed with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A mini bar fridge with a Complimentary bottled water
✔️ Free Wi-Fi, Cable TV
✔️ A Kettle machine','✔️Guests will have full private access to the Studio and all of its amenities during their stay.
✔️Free Access to our amazing rooftop while food and beverage with extra fees.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.',NULL::text[]),
(93144,'Welcome to Pyramids Lofts, your private view of the timeless Giza Pyramids. Soak in the beauty of the pyramids by day, then unwind in your amazing rooftop access by night.','This bright and cozy loft is designed for relaxation and comfort  the perfect retreat after a day spent exploring the pyramids and the vibrant streets of Giza.
Inside, you’ll find:

✔️ Two single beds with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A mini bar fridge with a Complimentary bottled water
✔️ Free Wi-Fi, Cable TV
✔️ A Kettle machine','✔️Guests will have full private access to the Studio and all of its amenities during their stay.
✔️Free Access to our amazing rooftop while food and beverage with extra fees.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.',NULL::text[]),
(93145,'Welcome to Pyramids Lofts, your private view of the timeless Giza Pyramids. Soak in the beauty of the pyramids by day, then unwind in your amazing rooftop access by night.','This bright and cozy loft is designed for relaxation and comfort  the perfect retreat after a day spent exploring the pyramids and the vibrant streets of Giza.
Inside, you’ll find:

✔️ Two single beds with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A mini bar fridge with a Complimentary bottled water
✔️ Free Wi-Fi, Smart TV
✔️ A Kettle machine','✔️Guests will have full private access to the Studio and all of its amenities during their stay.
✔️Free Access to our amazing rooftop while food and beverage with extra fees.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.',NULL::text[]),
(93146,'Welcome to Pyramids Lofts, your private view of the timeless Giza Pyramids. Soak in the beauty of the pyramids by day, then unwind in your amazing rooftop access by night.','This bright and cozy suites is designed for relaxation and comfort the perfect retreat after a day spent exploring the pyramids and the vibrant streets of Giza.
Inside each room, you’ll find:

✔️ Either one queen or one single or twin single or triple single beds with hotel-quality Egyptian cotton linens.
✔️ A full bathroom stocked with fresh face and body towels.
✔️ A mini bar fridge with a Complimentary bottled water.
✔️ Free Wi-Fi, Cable TV.
✔️ A Kettle machine.','✔️Guests will have full private access to the Room and all of its amenities during their stay.
✔️Free Access to our amazing rooftop while food and beverage with extra fees.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.',NULL::text[]),
(93147,'Welcome to Pyramids Lofts, your private view of the timeless Giza Pyramids. Soak in the beauty of the pyramids by day, then unwind in your amazing rooftop access by night.','This bright and cozy suite is designed for relaxation and comfort the perfect retreat after a day spent exploring the pyramids and the vibrant streets of Giza.
Inside, you’ll find:

✔️ One queen-sized bed with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A mini bar fridge with a Complimentary bottled water
✔️ Free Wi-Fi, Cable TV
✔️ A Kettle machine','✔️Guests will have full private access to the Studio and all of its amenities during their stay.
✔️Free Access to our amazing rooftop while food and beverage with extra fees.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.',NULL::text[]),
(93148,'Welcome to Pyramids Lofts, your private view of the timeless Giza Pyramids. Soak in the beauty of the pyramids by day, then unwind in your amazing rooftop access by night.','This bright and cozy loft is designed for relaxation and comfort  the perfect retreat after a day spent exploring the pyramids and the vibrant streets of Giza.
Inside, you’ll find:

✔️ One queen-sized bed with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A mini bar fridge with a Complimentary bottled water
✔️ Free Wi-Fi, Cable TV
✔️ A Kettle machine','✔️Guests will have full private access to the Studio and all of its amenities during their stay.
✔️Free Access to our amazing rooftop while food and beverage with extra fees.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.',NULL::text[]),
(93149,'Welcome to Pyramids Lofts, your private view of the timeless Giza Pyramids. Soak in the beauty of the pyramids by day, then unwind in your amazing rooftop access by night.','This bright and cozy loft is designed for relaxation and comfort  the perfect retreat after a day spent exploring the pyramids and the vibrant streets of Giza.
Inside, you’ll find:

✔️ Three single beds with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A mini bar fridge with a Complimentary bottled water
✔️ Free Wi-Fi, Cable TV
✔️ A Kettle machine','✔️Guests will have full private access to the Studio and all of its amenities during their stay.
✔️Free Access to our amazing rooftop while food and beverage with extra fees.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.',NULL::text[]),
(93150,'Welcome to Pyramids Lofts, your private view of the timeless Giza Pyramids. Soak in the beauty of the pyramids by day, then unwind in your amazing rooftop access by night.','This bright and cozy loft is designed for relaxation and comfort  the perfect retreat after a day spent exploring the pyramids and the vibrant streets of Giza.
Inside, you’ll find:

✔️ One single-sized bed with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A mini bar fridge with a Complimentary bottled water
✔️ Free Wi-Fi, Cable TV
✔️ A Kettle machine','✔️Guests will have full private access to the Studio and all of its amenities during their stay.
✔️Free Access to our amazing rooftop while food and beverage with extra fees.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.',NULL::text[]),
(93151,'Welcome to Pyramids Lofts, your private view of the timeless Giza Pyramids. Soak in the beauty of the pyramids by day, then unwind in your amazing rooftop access by night.','This bright and cozy loft is designed for relaxation and comfort  the perfect retreat after a day spent exploring the pyramids and the vibrant streets of Giza.
Inside, you’ll find:

✔️ Two single beds with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A mini bar fridge with a Complimentary bottled water
✔️ Free Wi-Fi, Cable TV
✔️ A Kettle machine','✔️Guests will have full private access to the Studio and all of its amenities during their stay.
✔️Free Access to our amazing rooftop while food and beverage with extra fees.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.',NULL::text[]),
(93152,'Welcome to Pyramids Lofts, your private view of the timeless Giza Pyramids. Soak in the beauty of the pyramids by day, then unwind in your amazing rooftop access by night.','This bright and cozy loft is designed for relaxation and comfort  the perfect retreat after a day spent exploring the pyramids and the vibrant streets of Giza.
Inside, you’ll find:

✔️ Two single beds with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A mini bar fridge with a Complimentary bottled water
✔️ Free Wi-Fi, Cable TV
✔️ A Kettle machine','✔️Guests will have full private access to the Studio and all of its amenities during their stay.
✔️Free Access to our amazing rooftop while food and beverage with extra fees.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.',NULL::text[]),
(93153,'Welcome to Pyramids Lofts, your private view of the timeless Giza Pyramids. Soak in the beauty of the pyramids by day, then unwind in your amazing rooftop access by night.','This bright and cozy loft is designed for relaxation and comfort  the perfect retreat after a day spent exploring the pyramids and the vibrant streets of Giza.
Inside, you’ll find:

✔️ Two single beds with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A mini bar fridge with a Complimentary bottled water
✔️ Free Wi-Fi, Cable TV
✔️ A Kettle machine','✔️Guests will have full private access to the Studio and all of its amenities during their stay.
✔️Free Access to our amazing rooftop while food and beverage with extra fees.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.',NULL::text[]),
(93154,'Welcome to Pyramids Lofts, your private view of the timeless Giza Pyramids. Soak in the beauty of the pyramids by day, then unwind in your amazing rooftop access by night.','This bright and cozy suite is designed for relaxation and comfort the perfect retreat after a day spent exploring the pyramids and the vibrant streets of Giza.
Inside, you’ll find:

✔️ One queen-sized bed with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A mini bar fridge with a Complimentary bottled water
✔️ Free Wi-Fi, Cable TV
✔️ A Kettle machine','✔️Guests will have full private access to the Studio and all of its amenities during their stay.
✔️Free Access to our amazing rooftop while food and beverage with extra fees.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.',NULL::text[]),
(93155,'Welcome to Pyramids Lofts, your private view of the timeless Giza Pyramids. Soak in the beauty of the pyramids by day, then unwind in your amazing rooftop access by night.','This bright and cozy loft is designed for relaxation and comfort  the perfect retreat after a day spent exploring the pyramids and the vibrant streets of Giza.
Inside, you’ll find:

✔️ Two single beds with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A mini bar fridge with a Complimentary bottled water
✔️ Free Wi-Fi, Cable TV
✔️ A Kettle machine','✔️Guests will have full private access to the Studio and all of its amenities during their stay.
✔️Free Access to our amazing rooftop while food and beverage with extra fees.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.',NULL::text[]),
(93156,'Welcome to Pyramids Lofts, your private view of the timeless Giza Pyramids. Soak in the beauty of the pyramids by day, then unwind in your amazing rooftop access by night.','This bright and cozy loft is designed for relaxation and comfort  the perfect retreat after a day spent exploring the pyramids and the vibrant streets of Giza.
Inside, you’ll find:

✔️ Two single beds with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A mini bar fridge with a Complimentary bottled water
✔️ Free Wi-Fi, Cable TV
✔️ A Kettle machine','✔️Guests will have full private access to the Studio and all of its amenities during their stay.
✔️Free Access to our amazing rooftop while food and beverage with extra fees.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.',NULL::text[]),
(93157,'Welcome to Pyramids Lofts, your private view of the timeless Giza Pyramids. Soak in the beauty of the pyramids by day, then unwind in your amazing rooftop access by night.','This bright and cozy loft is designed for relaxation and comfort  the perfect retreat after a day spent exploring the pyramids and the vibrant streets of Giza.
Inside, you’ll find:

✔️ One single-sized bed with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A mini bar fridge with a Complimentary bottled water
✔️ Free Wi-Fi, Cable TV
✔️ A Kettle machine','✔️Guests will have full private access to the Studio and all of its amenities during their stay.
✔️Free Access to our amazing rooftop while food and beverage with extra fees.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.',NULL::text[]),
(93158,'Welcome to Pyramids Lofts, your private view of the timeless Giza Pyramids. Soak in the beauty of the pyramids by day, then unwind in your amazing rooftop access by night.','This bright and cozy loft is designed for relaxation and comfort  the perfect retreat after a day spent exploring the pyramids and the vibrant streets of Giza.
Inside, you’ll find:

✔️ Two single beds with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A mini bar fridge with a Complimentary bottled water
✔️ Free Wi-Fi, Cable TV
✔️ A Kettle machine','✔️Guests will have full private access to the Studio and all of its amenities during their stay.
✔️Free Access to our amazing rooftop while food and beverage with extra fees.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.',NULL::text[]),
(93159,'Welcome to Pyramids Lofts, your private view of the timeless Giza Pyramids. Soak in the beauty of the pyramids by day, then unwind in your amazing rooftop access by night.','This bright and cozy loft is designed for relaxation and comfort  the perfect retreat after a day spent exploring the pyramids and the vibrant streets of Giza.
Inside, you’ll find:

✔️ Two single beds with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A mini bar fridge with a Complimentary bottled water
✔️ Free Wi-Fi, Cable TV
✔️ A Kettle machine','✔️Guests will have full private access to the Studio and all of its amenities during their stay.
✔️Free Access to our amazing rooftop while food and beverage with extra fees.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.',NULL::text[]),
(93160,'Welcome to Pyramids Lofts, your private view of the timeless Giza Pyramids. Soak in the beauty of the pyramids by day, then unwind in your amazing rooftop access by night.','This bright and cozy loft is designed for relaxation and comfort  the perfect retreat after a day spent exploring the pyramids and the vibrant streets of Giza.
Inside, you’ll find:

✔️ Two single beds with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A mini bar fridge with a Complimentary bottled water
✔️ Free Wi-Fi, Cable TV
✔️ A Kettle machine','✔️Guests will have full private access to the Studio and all of its amenities during their stay.
✔️Free Access to our amazing rooftop while food and beverage with extra fees.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.',NULL::text[]),
(93161,'Welcome to Pyramids Lofts, your private view of the timeless Giza Pyramids. Soak in the beauty of the pyramids by day, then unwind in your amazing rooftop access by night.','This bright and cozy suite is designed for relaxation and comfort the perfect retreat after a day spent exploring the pyramids and the vibrant streets of Giza.
Inside, you’ll find:

✔️ Two single-sized bed with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A mini bar fridge with a Complimentary bottled water
✔️ Free Wi-Fi, Cable TV
✔️ A Kettle machine','✔️Guests will have full private access to the Studio and all of its amenities during their stay.
✔️Free Access to our amazing rooftop while food and beverage with extra fees.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.',NULL::text[]),
(93162,'Welcome to Pyramids Lofts, your private view of the timeless Giza Pyramids. Soak in the beauty of the pyramids by day, then unwind in your amazing rooftop access by night.','This bright and cozy loft is designed for relaxation and comfort  the perfect retreat after a day spent exploring the pyramids and the vibrant streets of Giza.
Inside, you’ll find:

✔️ One queen-sized bed with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A mini bar fridge with a Complimentary bottled water
✔️ Free Wi-Fi, Cable TV
✔️ A Kettle machine','✔️Guests will have full private access to the Studio and all of its amenities during their stay.
✔️Free Access to our amazing rooftop while food and beverage with extra fees.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.',NULL::text[]),
(93163,'Welcome to Pyramids Lofts, your private view of the timeless Giza Pyramids. Soak in the beauty of the pyramids by day, then unwind in your amazing rooftop access by night.','This bright and cozy loft is designed for relaxation and comfort  the perfect retreat after a day spent exploring the pyramids and the vibrant streets of Giza.
Inside, you’ll find:

✔️ Three single beds with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A mini bar fridge with a Complimentary bottled water
✔️ Free Wi-Fi, Cable TV
✔️ A Kettle machine','✔️Guests will have full private access to the Studio and all of its amenities during their stay.
✔️Free Access to our amazing rooftop while food and beverage with extra fees.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.',NULL::text[]),
(93164,'Welcome to Pyramids Lofts, your private view of the timeless Giza Pyramids. Soak in the beauty of the pyramids by day, then unwind in your amazing rooftop access by night.','This bright and cozy loft is designed for relaxation and comfort  the perfect retreat after a day spent exploring the pyramids and the vibrant streets of Giza.
Inside, you’ll find:

✔️ Two single beds with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A mini bar fridge with a Complimentary bottled water
✔️ Free Wi-Fi, Cable TV
✔️ A Kettle machine','✔️Guests will have full private access to the Studio and all of its amenities during their stay.
✔️Free Access to our amazing rooftop while food and beverage with extra fees.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.',NULL::text[]),
(93165,'Welcome to Pyramids Lofts, your private view of the timeless Giza Pyramids. Soak in the beauty of the pyramids by day, then unwind in your amazing rooftop access by night.','This bright and cozy loft is designed for relaxation and comfort  the perfect retreat after a day spent exploring the pyramids and the vibrant streets of Giza.
Inside, you’ll find:

✔️ Two single beds with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A mini bar fridge with a Complimentary bottled water
✔️ Free Wi-Fi, Cable TV
✔️ A Kettle machine','✔️Guests will have full private access to the Studio and all of its amenities during their stay.
✔️Free Access to our amazing rooftop while food and beverage with extra fees.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.',NULL::text[]),
(93166,'Welcome to Pyramids Lofts, your private view of the timeless Giza Pyramids. Soak in the beauty of the pyramids by day, then unwind in your amazing rooftop access by night.','This bright and cozy loft is designed for relaxation and comfort  the perfect retreat after a day spent exploring the pyramids and the vibrant streets of Giza.
Inside, you’ll find:

✔️ Two single beds with hotel-quality Egyptian cotton linens
✔️ A bathroom stocked with fresh face and body towels
✔️ A mini bar fridge with a Complimentary bottled water
✔️ Free Wi-Fi, Cable TV
✔️ A Kettle machine','✔️Guests will have full private access to the Studio and all of its amenities during their stay.
✔️Free Access to our amazing rooftop while food and beverage with extra fees.
✔️For larger groups or multiple bookings, feel free to contact us — we may have additional units available in the same building or nearby.','✔️ Safety & Accessibility
Despite the humble setting, the area is generally safe and the location provides unbeatable access to the Giza Pyramids.
✔️ Authentic Local Surroundings
The apartment is well-maintained and just as shown in the photos, but the neighborhood offers a modest, authentic experience. Streets may be dusty, unpaved, or littered, common in areas around the Pyramids. If you’re seeking polished or luxury surroundings outside the apartment, this may not be the right fit.','✔️ Location: Just a short walk to the Giza Pyramids main gate — perfect for sightseeing.
✔️ Transportation: Uber, In-drive, and local taxis are easily available 24/7.
✔️ Private Services:
We offer convenient airport pickup, drop-off, and private guided tours across Cairo and Giza. Just message us to arrange in advance.
⚠️ Parking is not provided. Guests may use nearby street or private parking (subject to availability).','⚠️
• Smoking is strictly prohibited inside the apartment. Outdoor smoking only. A $100 fine applies for violations.
• Only registered guests are allowed inside the unit. No unapproved visitors.
• Proof of marriage is required for Egyptian and Arab nationals.
• IDs (Egyptian citizens only) or passport copies for all guests must be submitted before check-in.
• Please respect neighbors and shared spaces at all times.
✔️We kindly ask that you treat the space with care and leave it tidy at check-out.',NULL::text[])
) AS v(wp, short_description, the_property, guest_access, neighborhood,
       getting_around, other_details, amenities)
WHERE u.wp_post_id = v.wp AND u.source = 'xuru';
