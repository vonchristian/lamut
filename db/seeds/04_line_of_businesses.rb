classification_1 = LineOfBusinessClassification.find_by_name "Manufacturers, importers or producers of any article of commerce of whatever kind or nature, including brewers, distillers, rectifiers and re-packers, and compounders of liquors, distilled spirits and/or wines and others"
LineOfBusiness.create  line_of_business_classification_id: classification_1.id, name: "Brewers/Compounders, distillers of liquors, distilled spirits and/or wines", mayors_permit_fee_attributes: {:amount => 660}
LineOfBusiness.create line_of_business_classification_id: classification_1.id, name: "Brewers of Fermented Liquors (Tuba, Basi,Tapuy, Bugnay)", mayors_permit_fee_attributes: {:amount => 660}
LineOfBusiness.create line_of_business_classification_id: classification_1.id, name: "Importers of liquors, distilled spirits and/or wines", mayors_permit_fee_attributes: {:amount => 660}

classification_2 = LineOfBusinessClassification.find_by_name "Agricultural Products/Implements"
LineOfBusiness.create line_of_business_classification_id: classification_2.id, name: "Agricultural Inputs/Implements - Retail", mayors_permit_fee_attributes: {:amount => 440}
LineOfBusiness.create line_of_business_classification_id: classification_2.id, name: "Agricultural Inputs/Implements - Wholesale", mayors_permit_fee_attributes: {:amount => 1000}

LineOfBusiness.create  line_of_business_classification_id: classification_2.id, name: 'Betel nut("Taluwan") - Retail', mayors_permit_fee_attributes: {:amount => 100}
LineOfBusiness.create  line_of_business_classification_id: classification_2.id, name: 'Betel nut("Taluwan") - Wholesale', mayors_permit_fee_attributes: {:amount => 250}
LineOfBusiness.create  line_of_business_classification_id: classification_2.id, name: 'Dressed chicken - Retail', mayors_permit_fee_attributes: {:amount => 350}
LineOfBusiness.create  line_of_business_classification_id: classification_2.id, name: 'Fingerling producers/Distributor - Retail', mayors_permit_fee_attributes: {:amount => 350}
LineOfBusiness.create  line_of_business_classification_id: classification_2.id, name: 'Fingerling producers/Distributor - Wholesale', mayors_permit_fee_attributes: {:amount => 500}

classification_3 = LineOfBusinessClassification.find_by_name("Agro-Industrial Machinery / Heavy Equipment or non-resident operators renting said machinery / equipment in this municipality.")

LineOfBusiness.create line_of_business_classification_id: classification_3.id, name: "Backhoe", mayors_permit_fee_attributes: {:amount => 330}
LineOfBusiness.create line_of_business_classification_id: classification_3.id, name: "Batching Plant", mayors_permit_fee_attributes: {:amount => 220}
LineOfBusiness.create line_of_business_classification_id: classification_3.id, name: "Bulldozer", mayors_permit_fee_attributes: {:amount => 330}
LineOfBusiness.create line_of_business_classification_id: classification_3.id, name: "Chainsaw", mayors_permit_fee_attributes: {:amount => 330}
LineOfBusiness.create line_of_business_classification_id: classification_3.id, name: "Forklift", mayors_permit_fee_attributes: {:amount => 330}
LineOfBusiness.create line_of_business_classification_id: classification_3.id, name: "Grader, Heavy", mayors_permit_fee_attributes: {:amount => 330}
LineOfBusiness.create line_of_business_classification_id: classification_3.id, name: "Grader, Light", mayors_permit_fee_attributes: {:amount =>220}
LineOfBusiness.create line_of_business_classification_id: classification_3.id, name: "Mixer, Manual", mayors_permit_fee_attributes: {:amount =>150}
LineOfBusiness.create line_of_business_classification_id: classification_3.id, name: "Pay Loader", mayors_permit_fee_attributes: {:amount =>220}
LineOfBusiness.create line_of_business_classification_id: classification_3.id, name: "Prime Mover / Flatbed", mayors_permit_fee_attributes: {:amount =>220 }
LineOfBusiness.create line_of_business_classification_id: classification_3.id, name: "Rock Crusher", mayors_permit_fee_attributes: {:amount =>220 }
LineOfBusiness.create line_of_business_classification_id: classification_3.id, name: "Thresher, Manual", mayors_permit_fee_attributes: {:amount =>165 }
LineOfBusiness.create line_of_business_classification_id: classification_3.id, name: "Thresher, Mechanized", mayors_permit_fee_attributes: {:amount =>220 }
LineOfBusiness.create line_of_business_classification_id: classification_3.id, name: "Tractor, Hand", mayors_permit_fee_attributes: {:amount =>220 }
LineOfBusiness.create line_of_business_classification_id: classification_3.id, name: "Tractor, Heavy", mayors_permit_fee_attributes: {:amount =>330 }
LineOfBusiness.create line_of_business_classification_id: classification_3.id, name: "Tractor, Light", mayors_permit_fee_attributes: {:amount =>220 }
LineOfBusiness.create line_of_business_classification_id: classification_3.id, name: "Truck, Cargo", mayors_permit_fee_attributes: {:amount =>220 }
LineOfBusiness.create line_of_business_classification_id: classification_3.id, name: "Truck, Dump", mayors_permit_fee_attributes: {:amount =>220 }
LineOfBusiness.create line_of_business_classification_id: classification_3.id, name: "Truck, Transit Mixer", mayors_permit_fee_attributes: {:amount => 165 }
LineOfBusiness.create line_of_business_classification_id: classification_3.id, name: "Other Agricultural Machineries or heavy equipment", mayors_permit_fee_attributes: {:amount => 220 }

classification_4 = LineOfBusinessClassification.find_by_name "Industrial"

LineOfBusiness.create line_of_business_classification_id: classification_4.id, name: "Appliance Repair Shop", mayors_permit_fee_attributes: {:amount => 396}
LineOfBusiness.create line_of_business_classification_id: classification_4.id, name: "Auto Repair Shop", mayors_permit_fee_attributes: {:amount => 500 }
LineOfBusiness.create line_of_business_classification_id: classification_4.id, name: "Blacksmiths / Goldsmiths", mayors_permit_fee_attributes: {:amount => 495 }
LineOfBusiness.create line_of_business_classification_id: classification_4.id, name: "Cellphone Repair Shop", mayors_permit_fee_attributes: {:amount => 330 }
LineOfBusiness.create line_of_business_classification_id: classification_4.id, name: "Cellphone Shop", mayors_permit_fee_attributes: {:amount => 330 }
LineOfBusiness.create line_of_business_classification_id: classification_4.id, name: "Chainsaw Repair Shop", mayors_permit_fee_attributes: {:amount => 330 }
LineOfBusiness.create line_of_business_classification_id: classification_4.id, name: "Computer Shop", mayors_permit_fee_attributes: {:amount => 400 }
LineOfBusiness.create line_of_business_classification_id: classification_4.id, name: "Computer Supplies / Repair Shop", mayors_permit_fee_attributes: {:amount => 400 }
LineOfBusiness.create line_of_business_classification_id: classification_4.id, name: "Electronic Repair Shop", mayors_permit_fee_attributes: {:amount => 220 }
LineOfBusiness.create line_of_business_classification_id: classification_4.id, name: "Hollow Block Makers", mayors_permit_fee_attributes: {:amount => 750 }
LineOfBusiness.create line_of_business_classification_id: classification_4.id, name: "Junk buyers (Ambulant)", mayors_permit_fee_attributes: {:amount => 100 }
LineOfBusiness.create line_of_business_classification_id: classification_4.id, name: "Junk Shop (Stationary)", mayors_permit_fee_attributes: {:amount => 330 }
LineOfBusiness.create line_of_business_classification_id: classification_4.id, name: "Meat/Fish/Fruit Processing", mayors_permit_fee_attributes: {:amount => 330 }
LineOfBusiness.create line_of_business_classification_id: classification_4.id, name: "Motor Repair Shop", mayors_permit_fee_attributes: {:amount => 330 }
LineOfBusiness.create line_of_business_classification_id: classification_4.id, name: "Multipurpose Food Grinders", mayors_permit_fee_attributes: {:amount => 220 }
LineOfBusiness.create line_of_business_classification_id: classification_4.id, name: "Palay/Corn/Coffee Millers", mayors_permit_fee_attributes: {:amount => 440 }
LineOfBusiness.create line_of_business_classification_id: classification_4.id, name: "Sand and Gravel/Boulders/Earth Fill", mayors_permit_fee_attributes: {:amount => 1100 }
LineOfBusiness.create line_of_business_classification_id: classification_4.id, name: "Sash and Furniture Shop", mayors_permit_fee_attributes: {:amount => 1320 }
LineOfBusiness.create line_of_business_classification_id: classification_4.id, name: "Signage, Billboard, Tarpaulin Makers", mayors_permit_fee_attributes: {:amount => 220 }
LineOfBusiness.create line_of_business_classification_id: classification_4.id, name: "Vehicle and Motor Side Car Assembler", mayors_permit_fee_attributes: {:amount => 1000 }
LineOfBusiness.create line_of_business_classification_id: classification_4.id, name: "Vendo/Dispensing Machines", mayors_permit_fee_attributes: {:amount => 200 }
LineOfBusiness.create line_of_business_classification_id: classification_4.id, name: "Vulcanizing Shop", mayors_permit_fee_attributes: {:amount => 330 }
LineOfBusiness.create line_of_business_classification_id: classification_4.id, name: "Water Station", mayors_permit_fee_attributes: {:amount => 550 }
LineOfBusiness.create line_of_business_classification_id: classification_4.id, name: "Woodcarving Shop and Other Forest Products", mayors_permit_fee_attributes: {:amount => 660 }

classification_5 = LineOfBusinessClassification.find_by_name "Eating Places"

LineOfBusiness.create line_of_business_classification_id: classification_5.id, name: "Balot/Barbecue Stand", mayors_permit_fee_attributes: {:amount => 110 }
LineOfBusiness.create line_of_business_classification_id: classification_5.id, name: "Buko/Palamig Stand", mayors_permit_fee_attributes: {:amount => 110 }
LineOfBusiness.create line_of_business_classification_id: classification_5.id, name: "Burger Stand", mayors_permit_fee_attributes: {:amount => 330 }
LineOfBusiness.create line_of_business_classification_id: classification_5.id, name: "Cafes/Cafeteria", mayors_permit_fee_attributes: {:amount => 330 }
LineOfBusiness.create line_of_business_classification_id: classification_5.id, name: "Ice Cream Stand", mayors_permit_fee_attributes: {:amount => 110 }
LineOfBusiness.create line_of_business_classification_id: classification_5.id, name: "Restaurant", mayors_permit_fee_attributes: {:amount => 440 }
LineOfBusiness.create line_of_business_classification_id: classification_5.id, name: "Snack House", mayors_permit_fee_attributes: {:amount => 330 }
LineOfBusiness.create line_of_business_classification_id: classification_5.id, name: "Other Business of the same nature", mayors_permit_fee_attributes: {:amount => 330 }

classification_6 =  LineOfBusinessClassification.find_by_name "Commercial Businesses"
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Motorcycle/Bicycle Spare Parts", mayors_permit_fee_attributes: {:amount => 600 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Auto Spare Parts", mayors_permit_fee_attributes: {:amount => 1000 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Motor Oil/Lubricants", mayors_permit_fee_attributes: {:amount => 200 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Bakery(Retailer)", mayors_permit_fee_attributes: {:amount => 440 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Bakery(Wholesaler)", mayors_permit_fee_attributes: {:amount => 800 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Buy and Sell of Rice/Corn/Coffee Grains", mayors_permit_fee_attributes: {:amount => 1000 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "CATV/Telephone/Radio Stations", mayors_permit_fee_attributes: {:amount => 1320 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Cell Site", mayors_permit_fee_attributes: {:amount => 5500 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Charcoal", mayors_permit_fee_attributes: {:amount => 231 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Cigarette(Retailer)", mayors_permit_fee_attributes: {:amount => 300 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Cigarette(Wholesaler)", mayors_permit_fee_attributes: {:amount => 1000 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Dry Goods(Retailer)", mayors_permit_fee_attributes: {:amount => 440 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Dry Goods(Wholesaler)", mayors_permit_fee_attributes: {:amount => 1000 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Foot Wear(Retailer)", mayors_permit_fee_attributes: {:amount => 440 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Foot Wear(Wholesaler)", mayors_permit_fee_attributes: {:amount => 500 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Gasoline Station", mayors_permit_fee_attributes: {:amount => 880 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Grocery Store", mayors_permit_fee_attributes: {:amount => 440 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Hardware Supplies", mayors_permit_fee_attributes: {:amount => 660 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Ice Blocks", mayors_permit_fee_attributes: {:amount => 231 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Liquor(Retailer)", mayors_permit_fee_attributes: {:amount => 500 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Liquor(Wholesaler)", mayors_permit_fee_attributes: {:amount => 1000 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "LPG(Retailer)", mayors_permit_fee_attributes: {:amount => 330 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "LPG(Wholesaler)", mayors_permit_fee_attributes: {:amount => 1000 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Newspapers, magazines, etc.", mayors_permit_fee_attributes: {:amount => 231 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Pharmaceutical Distributor", mayors_permit_fee_attributes: {:amount => 1000 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Pharmacy", mayors_permit_fee_attributes: {:amount => 440 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Phone Cards(E-Load/Auto Load)", mayors_permit_fee_attributes: {:amount => 220 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Plastic Wares", mayors_permit_fee_attributes: {:amount => 440 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Rental(Private Buildings) Office/Business Establsihments 1-3 rooms/space", mayors_permit_fee_attributes: {:amount => 1500 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Rental(Private Buildings) Office/Business Establsihments 4 and above rooms/space", mayors_permit_fee_attributes: {:amount => 2500 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "RTW (Including used clothing)", mayors_permit_fee_attributes: {:amount => 400 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Sales Center of Motorcycles", mayors_permit_fee_attributes: {:amount => 1500 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Sales Center of Cars", mayors_permit_fee_attributes: {:amount => 3000 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Sales Center of Light/Heavy Equipment", mayors_permit_fee_attributes: {:amount => 4000 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Sales Center of Appliances", mayors_permit_fee_attributes: {:amount => 1000 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Sari-Sari Store", mayors_permit_fee_attributes: {:amount => 231 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "School/Office Supplies", mayors_permit_fee_attributes: {:amount => 330 }
LineOfBusiness.create line_of_business_classification_id: classification_6.id, name: "Others(Commercial Businesses)", mayors_permit_fee_attributes: {:amount => 231 }

classification_7 = LineOfBusinessClassification.find_by_name "Services"
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Accounting Services", mayors_permit_fee_attributes: {:amount => 500 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Animal Inseminators", mayors_permit_fee_attributes: {:amount => 495 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Automated Teller Machines(ATM) of banks/per machine", mayors_permit_fee_attributes: {:amount => 200 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Beauticians(Ambulant)", mayors_permit_fee_attributes: {:amount => 220 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Beauty Parlors", mayors_permit_fee_attributes: {:amount => 330 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Boarding House(Class A)", mayors_permit_fee_attributes: { :amount => 1000 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Boarding House(Class B)", mayors_permit_fee_attributes: { :amount => 800 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Boarding House(Class C)", mayors_permit_fee_attributes: { :amount => 500 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Boarding House(Class D)", mayors_permit_fee_attributes: {:amount => 300 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Butchers", mayors_permit_fee_attributes: {:amount => 231 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Cargo/Baggage Handlers", mayors_permit_fee_attributes: {:amount => 110 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Construction/Repair Shop of Animal-drawn Vehicles, Bicycles, Tricycles, Sidecar", mayors_permit_fee_attributes: {:amount => 330 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Construction/Repair Shop of Bodies of Motor Vehicles", mayors_permit_fee_attributes: {:amount => 660 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Consultants (Other Consultancy Services)", mayors_permit_fee_attributes: {:amount => 1200 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Courier Services", mayors_permit_fee_attributes: {:amount => 231 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Diagnostic Laboratory Center", mayors_permit_fee_attributes: {:amount => 600 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Drug Testing Center", mayors_permit_fee_attributes: {:amount => 330 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Film-making/Movie Production Center", mayors_permit_fee_attributes: {:amount => 1500 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Fitness Center", mayors_permit_fee_attributes: {:amount => 500 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Fruit Tree Sprayers(for blooming purposes)", mayors_permit_fee_attributes: {:amount => 330 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Funeral Parlor", mayors_permit_fee_attributes: {:amount => 880 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "General Engineering, Building and Specialty Contractors", mayors_permit_fee_attributes: {:amount => 3300 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Haulers(Private)", mayors_permit_fee_attributes: {:amount => 3000 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Haulers(Private) - Scrap/Junk Materials", mayors_permit_fee_attributes: {:amount => 1000 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Haulers(Private) - Fruits/Vegetables", mayors_permit_fee_attributes: {:amount => 500 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Haulers(Private) - Feeds(Non-commercial)", mayors_permit_fee_attributes: {:amount => 1500 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Haulers(Private) - Chickens(Chicks/Culls)", mayors_permit_fee_attributes: {:amount => 500 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Haulers(Private) - Chickens(Broilers)", mayors_permit_fee_attributes: {:amount => 1500 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Haulers(Private) - Forest Products(Charcoal)", mayors_permit_fee_attributes: {:amount => 500 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Haulers(Private) - Forest Products(Wood Carvings)", mayors_permit_fee_attributes: {:amount => 1000 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Haulers(Private) - Sand and Gravel(Commercial/Projects)", mayors_permit_fee_attributes: {:amount => 1500 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Hotel/Lodging House/Motels", mayors_permit_fee_attributes: {:amount => 1320 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "House and/or Sign Painters", mayors_permit_fee_attributes: {:amount => 165 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Lathe Machine Shop", mayors_permit_fee_attributes: {:amount => 660 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Laundry Shops", mayors_permit_fee_attributes: {:amount => 300 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Learning Centers(Private) - Nursery and Kinder", mayors_permit_fee_attributes: {:amount => 1000 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Learning Centers(Private) - Primary and Elementary", mayors_permit_fee_attributes: {:amount => 1000 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Learning Centers(Private) - Secondary", mayors_permit_fee_attributes: {:amount => 1000 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Learning Centers(Private) - Tertiary/Vocational", mayors_permit_fee_attributes: {:amount => 1000 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Lotto Operators", mayors_permit_fee_attributes: {:amount => 1100 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Manpower/Notarial/Legal/Surveying Services", mayors_permit_fee_attributes: {:amount => 1320 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Massage Clinic", mayors_permit_fee_attributes: {:amount => 500 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Medical/Dental/Optical Clinic", mayors_permit_fee_attributes: {:amount => 440 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Person engaged in installation of Water System", mayors_permit_fee_attributes: {:amount => 231 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Person engaged in installation of Electricity/Electronics", mayors_permit_fee_attributes: {:amount => 231 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Photocopy Machine (per unit)", mayors_permit_fee_attributes: {:amount => 100 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Photographic Studios", mayors_permit_fee_attributes: {:amount => 231 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Photo static, White/Blue Printing", mayors_permit_fee_attributes: {:amount => 231 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Plastic Lamination (per unit)", mayors_permit_fee_attributes: {:amount => 100 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Printing House/Press", mayors_permit_fee_attributes: {:amount => 500 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Realtors", mayors_permit_fee_attributes: {:amount => 440 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Rent-a-car/van/jeepneys", mayors_permit_fee_attributes: {:amount => 500 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Review Centers", mayors_permit_fee_attributes: {:amount => 1000 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Seminar, Training, and Other Teaching Services (Private)", mayors_permit_fee_attributes: {:amount => 300 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Shoe Repair Shop", mayors_permit_fee_attributes: {:amount => 220 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Sound System Rental", mayors_permit_fee_attributes: {:amount => 385 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Tailoring/Dress Shop", mayors_permit_fee_attributes: {:amount => 495 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Travel Agency", mayors_permit_fee_attributes: {:amount => 500 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Upholstery Shop", mayors_permit_fee_attributes: {:amount => 440 }
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Veterinary Clinic/Pet Shop", mayors_permit_fee_attributes: {:amount => 1320}
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Watch Repair Shop", mayors_permit_fee_attributes: {:amount => 330}
LineOfBusiness.create line_of_business_classification_id: classification_7.id, name: "Others(Services)", mayors_permit_fee_attributes: {:amount => 231}

classification_8 = LineOfBusinessClassification.find_by_name "Recreational, Entertainment and Amusement Particulars"
LineOfBusiness.create line_of_business_classification_id: classification_8.id, name: "Beerhouses(without karaoke/video)", mayors_permit_fee_attributes: {:amount => 660}
LineOfBusiness.create line_of_business_classification_id: classification_8.id, name: "Billiard Hall/Pool", mayors_permit_fee_attributes: {:amount => 440}
LineOfBusiness.create line_of_business_classification_id: classification_8.id, name: "Cinematographic Film/Video/Tape Owners/Lessors", mayors_permit_fee_attributes: {:amount => 330 }
LineOfBusiness.create line_of_business_classification_id: classification_8.id, name: "Night Clubs, Sing-along Bars/Discos", mayors_permit_fee_attributes: {:amount => 1320 }
LineOfBusiness.create line_of_business_classification_id: classification_8.id, name: "Resort Owners/Zoo Operators", mayors_permit_fee_attributes: {:amount => 1100 }
LineOfBusiness.create line_of_business_classification_id: classification_8.id, name: "Video Games", mayors_permit_fee_attributes: {:amount => 1100 }
LineOfBusiness.create line_of_business_classification_id: classification_8.id, name: "Videoke Machine Rentals/Unit", mayors_permit_fee_attributes: {:amount => 300 }

classification_9 = LineOfBusinessClassification.find_by_name "Other Business Activities"
LineOfBusiness.create line_of_business_classification_id: classification_9.id, name: "Banks", mayors_permit_fee_attributes: {:amount => 1320 }
LineOfBusiness.create line_of_business_classification_id: classification_9.id, name: "Insurance/Surety", mayors_permit_fee_attributes: {:amount => 880 }
LineOfBusiness.create line_of_business_classification_id: classification_9.id, name: "Micro lending from lending institution", mayors_permit_fee_attributes: {:amount => 2000 }
LineOfBusiness.create line_of_business_classification_id: classification_9.id, name: "Money Shop", mayors_permit_fee_attributes: {:amount => 660 }
LineOfBusiness.create line_of_business_classification_id: classification_9.id, name: "Pawn Shop", mayors_permit_fee_attributes: {:amount => 660 }
LineOfBusiness.create line_of_business_classification_id: classification_9.id, name: "Private Individual Lending", mayors_permit_fee_attributes: {:amount => 1100 }
LineOfBusiness.create line_of_business_classification_id: classification_9.id, name: "Underwriters/agents", mayors_permit_fee_attributes: {:amount => 440 }
LineOfBusiness.create line_of_business_classification_id: classification_9.id, name: "Peddlers (Ambulant)", mayors_permit_fee_attributes: {:amount => 231 }
LineOfBusiness.create line_of_business_classification_id: classification_9.id, name: "Peddlers (Motorized)", mayors_permit_fee_attributes: {:amount => 495 }
LineOfBusiness.create line_of_business_classification_id: classification_9.id, name: "Permit to Advertise Business and Profession thru Billboards, Signs, Tarpaulins", mayors_permit_fee_attributes: {:amount => 500 }
LineOfBusiness.create line_of_business_classification_id: classification_9.id, name: "Permit to transport large cattle", mayors_permit_fee_attributes: {:amount => 220 }
LineOfBusiness.create line_of_business_classification_id: classification_9.id, name: "Others(Other Business Activities)", mayors_permit_fee_attributes: {:amount => 231 }
