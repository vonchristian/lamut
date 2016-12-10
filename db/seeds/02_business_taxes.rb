classification_1 = Businesses::BusinessClassification.find_by_name("Manufacturers, assemblers, re-packers, processors, brewers, distillers, rectifiers, and compounders of liquors, distilled spirits, and wines or manufacturers of any article of commerce of whatever kind in nature")
Taxes::BusinessTax.create(business_classification_id: classification_1.id, minimum_amount: 0.01, maximum_amount: 9_999.99, tax_amount: 181.50)
Taxes::BusinessTax.create(business_classification_id: classification_1.id, minimum_amount: 10_000, maximum_amount: 14_999.99, tax_amount: 242)
Taxes::BusinessTax.create(business_classification_id: classification_1.id, minimum_amount: 15_000, maximum_amount: 19_999.99, tax_amount: 332.20)
Taxes::BusinessTax.create(business_classification_id: classification_1.id, minimum_amount: 20_000, maximum_amount: 29_999.99, tax_amount: 484)
Taxes::BusinessTax.create(business_classification_id: classification_1.id, minimum_amount: 30_000, maximum_amount: 39_999.99, tax_amount: 726)
Taxes::BusinessTax.create(business_classification_id: classification_1.id, minimum_amount: 40_000, maximum_amount: 49_999.99, tax_amount: 907.50)
Taxes::BusinessTax.create(business_classification_id: classification_1.id, minimum_amount: 50_000, maximum_amount: 74_999.99, tax_amount: 1452)
Taxes::BusinessTax.create(business_classification_id: classification_1.id, minimum_amount: 75_000, maximum_amount: 99_999.99, tax_amount: 1815)
Taxes::BusinessTax.create(business_classification_id: classification_1.id, minimum_amount: 100_000, maximum_amount: 149_999.99, tax_amount: 2420)
Taxes::BusinessTax.create(business_classification_id: classification_1.id, minimum_amount: 150_000, maximum_amount: 199_999.99, tax_amount: 3025)
Taxes::BusinessTax.create(business_classification_id: classification_1.id, minimum_amount: 200_000, maximum_amount: 299_999.99, tax_amount: 4235)
Taxes::BusinessTax.create(business_classification_id: classification_1.id, minimum_amount: 300_000, maximum_amount: 499_999.99, tax_amount: 6050)
Taxes::BusinessTax.create(business_classification_id: classification_1.id, minimum_amount: 500_000, maximum_amount: 749_999.99, tax_amount: 8800)
Taxes::BusinessTax.create(business_classification_id: classification_1.id, minimum_amount: 750_000, maximum_amount: 999_999.99, tax_amount: 11000)
Taxes::BusinessTax.create(business_classification_id: classification_1.id, minimum_amount: 1_000_000, maximum_amount: 1_999_999.99, tax_amount: 15125)
Taxes::BusinessTax.create(business_classification_id: classification_1.id, minimum_amount: 2_000_000, maximum_amount: 2_999_999.99, tax_amount: 18150)
Taxes::BusinessTax.create(business_classification_id: classification_1.id, minimum_amount: 3_000_000, maximum_amount: 3_999_999.99, tax_amount: 21780)
Taxes::BusinessTax.create(business_classification_id: classification_1.id, minimum_amount: 4_000_000, maximum_amount: 4_999_999.99, tax_amount: 25410)
Taxes::BusinessTax.create(business_classification_id: classification_1.id, minimum_amount: 5_000_000, maximum_amount: 6_499_999.99, tax_amount: 26812.50)

classification_2 = Businesses::BusinessClassification.find_by_name("Wholesalers, distributors, or dealers of any article of commerce of whatever kind or nature")


Taxes::BusinessTax.create(business_classification_id: classification_2.id, minimum_amount: 0.01, maximum_amount: 999.99, tax_amount: 19.80)
Taxes::BusinessTax.create(business_classification_id: classification_2.id, minimum_amount: 1_000, maximum_amount: 1_999.99, tax_amount: 36.30)
Taxes::BusinessTax.create(business_classification_id: classification_2.id, minimum_amount: 2_000, maximum_amount: 2_999.99, tax_amount: 55)
Taxes::BusinessTax.create(business_classification_id: classification_2.id, minimum_amount: 3_000, maximum_amount: 3_999.99, tax_amount: 79.20)
Taxes::BusinessTax.create(business_classification_id: classification_2.id, minimum_amount: 4_000, maximum_amount: 4_999.99, tax_amount: 110)
Taxes::BusinessTax.create(business_classification_id: classification_2.id, minimum_amount: 5_000, maximum_amount: 5_999.99, tax_amount: 133.10)
Taxes::BusinessTax.create(business_classification_id: classification_2.id, minimum_amount: 6_000, maximum_amount: 6_999.99, tax_amount: 157.30)
Taxes::BusinessTax.create(business_classification_id: classification_2.id, minimum_amount: 7_000, maximum_amount: 7_999.99, tax_amount: 181.50)
Taxes::BusinessTax.create(business_classification_id: classification_2.id, minimum_amount: 8_000, maximum_amount: 9_999.99, tax_amount: 205.70)
Taxes::BusinessTax.create(business_classification_id: classification_2.id, minimum_amount: 10_000, maximum_amount: 14_999.99, tax_amount: 242)
Taxes::BusinessTax.create(business_classification_id: classification_2.id, minimum_amount: 15_000, maximum_amount: 19_999.99, tax_amount: 302.50)
Taxes::BusinessTax.create(business_classification_id: classification_2.id, minimum_amount: 20_000, maximum_amount: 29_999.99, tax_amount: 363)
Taxes::BusinessTax.create(business_classification_id: classification_2.id, minimum_amount: 30_000, maximum_amount: 39_999.99, tax_amount: 484)
Taxes::BusinessTax.create(business_classification_id: classification_2.id, minimum_amount: 40_000, maximum_amount: 49_999.99, tax_amount: 726)
Taxes::BusinessTax.create(business_classification_id: classification_2.id, minimum_amount: 50_000, maximum_amount: 74_999.99, tax_amount: 1089)
Taxes::BusinessTax.create(business_classification_id: classification_2.id, minimum_amount: 75_000, maximum_amount: 99_999.99, tax_amount: 1452)
Taxes::BusinessTax.create(business_classification_id: classification_2.id, minimum_amount: 100_000, maximum_amount: 149_999.99, tax_amount: 2057)
Taxes::BusinessTax.create(business_classification_id: classification_2.id, minimum_amount: 150_000, maximum_amount: 199_999.99, tax_amount: 2662)
Taxes::BusinessTax.create(business_classification_id: classification_2.id, minimum_amount: 200_000, maximum_amount: 299_999.99, tax_amount: 3630)
Taxes::BusinessTax.create(business_classification_id: classification_2.id, minimum_amount: 300_000, maximum_amount: 499_999.99, tax_amount: 4840)
Taxes::BusinessTax.create(business_classification_id: classification_2.id, minimum_amount: 500_000, maximum_amount: 749_999.99, tax_amount: 7260)
Taxes::BusinessTax.create(business_classification_id: classification_2.id, minimum_amount: 750_000, maximum_amount: 999_999.99, tax_amount: 9680)
Taxes::BusinessTax.create(business_classification_id: classification_2.id, minimum_amount: 1_000_000, maximum_amount: 1_999_999.99, tax_amount: 11000)


classification_3 = Businesses::BusinessClassification.find_by_name('Contractors and Other Independent Contractors')

Taxes::BusinessTax.create(business_classification_id: classification_3.id, minimum_amount: 0.1, maximum_amount: 4_999.99, tax_amount: 30.25)
Taxes::BusinessTax.create(business_classification_id: classification_3.id, minimum_amount: 5_000, maximum_amount: 9_999.99, tax_amount: 67.65)
Taxes::BusinessTax.create(business_classification_id: classification_3.id, minimum_amount: 10_000, maximum_amount: 14_999.99, tax_amount: 114.95)
Taxes::BusinessTax.create(business_classification_id: classification_3.id, minimum_amount: 15_000, maximum_amount: 19_999.99, tax_amount: 181.50)
Taxes::BusinessTax.create(business_classification_id: classification_3.id, minimum_amount: 20_000, maximum_amount: 29_999.99, tax_amount: 302.50)
Taxes::BusinessTax.create(business_classification_id: classification_3.id, minimum_amount: 30_000, maximum_amount: 39_999.99, tax_amount: 423.50)
Taxes::BusinessTax.create(business_classification_id: classification_3.id, minimum_amount: 40_000, maximum_amount: 49_999.99, tax_amount: 605)
Taxes::BusinessTax.create(business_classification_id: classification_3.id, minimum_amount: 50_000, maximum_amount: 74_999.99, tax_amount: 968)
Taxes::BusinessTax.create(business_classification_id: classification_3.id, minimum_amount: 75_000, maximum_amount: 99_999.99, tax_amount: 1452)
Taxes::BusinessTax.create(business_classification_id: classification_3.id, minimum_amount: 100_000, maximum_amount: 149_999.99, tax_amount: 2178)
Taxes::BusinessTax.create(business_classification_id: classification_3.id, minimum_amount: 150_000, maximum_amount: 199_999.99, tax_amount: 2904)
Taxes::BusinessTax.create(business_classification_id: classification_3.id, minimum_amount: 200_000, maximum_amount: 249_999.99, tax_amount: 3993)
Taxes::BusinessTax.create(business_classification_id: classification_3.id, minimum_amount: 250_000, maximum_amount: 299_999.99, tax_amount: 5082)
Taxes::BusinessTax.create(business_classification_id: classification_3.id, minimum_amount: 300_000, maximum_amount: 399_999.99, tax_amount: 6776)
Taxes::BusinessTax.create(business_classification_id: classification_3.id, minimum_amount: 400_000, maximum_amount: 499_999.99, tax_amount: 9075)
Taxes::BusinessTax.create(business_classification_id: classification_3.id, minimum_amount: 500_000, maximum_amount: 749_999.99, tax_amount: 10175)
Taxes::BusinessTax.create(business_classification_id: classification_3.id, minimum_amount: 750_000, maximum_amount: 999_999.99, tax_amount: 11275)
Taxes::BusinessTax.create(business_classification_id: classification_3.id, minimum_amount: 1_000_000, maximum_amount: 1_999_999.99, tax_amount: 12650)


classification_4 = Businesses::BusinessClassification.find_by_name("Business hereunder enumerated: Cafes, cafeterias, ice cream and other refreshment parlors, restaurants, soda fountain bars, carinderias or food caterers; Commission agents; Lessors, dealers, brokers of real estate; On travel agencies and travel agents; Boarding houses, motels, apartments, and condominiums; Subdivision owners/Private Cemeteries and Memorial Parks; Hospitals, medical/dental/therapeutic clinics, medical/dental laboratories; Operators of Cable Network System; Operators of computer services establishments; General consultancy services; All other similar activities consisting essentially of the sales of services for a fee.")

Taxes::BusinessTax.create(business_classification_id: classification_4.id, minimum_amount: 0.1, maximum_amount: 4_999.99, tax_amount: 30)
Taxes::BusinessTax.create(business_classification_id: classification_4.id, minimum_amount: 5_000, maximum_amount: 9_999.99, tax_amount: 67)
Taxes::BusinessTax.create(business_classification_id: classification_4.id, minimum_amount: 10_000, maximum_amount: 14_999.99, tax_amount: 114)
Taxes::BusinessTax.create(business_classification_id: classification_4.id, minimum_amount: 15_000, maximum_amount: 19_999.99, tax_amount: 180)
Taxes::BusinessTax.create(business_classification_id: classification_4.id, minimum_amount: 20_000, maximum_amount: 29_999.99, tax_amount: 300)
Taxes::BusinessTax.create(business_classification_id: classification_4.id, minimum_amount: 30_000, maximum_amount: 39_999.99, tax_amount: 420)
Taxes::BusinessTax.create(business_classification_id: classification_4.id, minimum_amount: 40_000, maximum_amount: 49_999.99, tax_amount: 600)
Taxes::BusinessTax.create(business_classification_id: classification_4.id, minimum_amount: 50_000, maximum_amount: 74_999.99, tax_amount: 965)
Taxes::BusinessTax.create(business_classification_id: classification_4.id, minimum_amount: 75_000, maximum_amount: 99_999.99, tax_amount: 1450)
Taxes::BusinessTax.create(business_classification_id: classification_4.id, minimum_amount: 100_000, maximum_amount: 149_999.99, tax_amount: 2170)
Taxes::BusinessTax.create(business_classification_id: classification_4.id, minimum_amount: 150_000, maximum_amount: 199_999.99, tax_amount: 2900)
Taxes::BusinessTax.create(business_classification_id: classification_4.id, minimum_amount: 200_000, maximum_amount: 249_999.99, tax_amount: 3990)
Taxes::BusinessTax.create(business_classification_id: classification_4.id, minimum_amount: 250_000, maximum_amount: 299_999.99, tax_amount: 5080)
Taxes::BusinessTax.create(business_classification_id: classification_4.id, minimum_amount: 300_000, maximum_amount: 399_999.99, tax_amount: 6770)
Taxes::BusinessTax.create(business_classification_id: classification_4.id, minimum_amount: 400_000, maximum_amount: 499_999.99, tax_amount: 9075)
Taxes::BusinessTax.create(business_classification_id: classification_4.id, minimum_amount: 500_000, maximum_amount: 749_999.99, tax_amount: 10150)
Taxes::BusinessTax.create(business_classification_id: classification_4.id, minimum_amount: 750_000, maximum_amount: 999_999.99, tax_amount: 11270)
Taxes::BusinessTax.create(business_classification_id: classification_4.id, minimum_amount: 1_000_000, maximum_amount: 1_999_999.99, tax_amount: 12600)
