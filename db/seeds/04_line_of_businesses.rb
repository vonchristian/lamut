classification_1 = LineOfBusinessClassification.find_by_name "manufacturers, importers or producers of any article of commerce of whatever kind or nature, including brewers, distillers, rectifiers and re-packers, and compounders of liquors, distilled spirits and/or wines and others"
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



LineOfBusiness.create name: "Brewers of Fermented Liquors (Tuba, Basi,Tapuy, Bugnay)", mayors_permit_fee_attributes: {:amount => 660}
LineOfBusiness.create name: "Brewers of Fermented Liquors (Tuba, Basi,Tapuy, Bugnay)", mayors_permit_fee_attributes: {:amount => 660}
LineOfBusiness.create name: "Brewers of Fermented Liquors (Tuba, Basi,Tapuy, Bugnay)", mayors_permit_fee_attributes: {:amount => 660}
LineOfBusiness.create name: "Brewers of Fermented Liquors (Tuba, Basi,Tapuy, Bugnay)", mayors_permit_fee_attributes: {:amount => 660}
LineOfBusiness.create name: "Brewers of Fermented Liquors (Tuba, Basi,Tapuy, Bugnay)", mayors_permit_fee_attributes: {:amount => 660}
LineOfBusiness.create name: "Brewers of Fermented Liquors (Tuba, Basi,Tapuy, Bugnay)", mayors_permit_fee_attributes: {:amount => 660}
LineOfBusiness.create name: "Brewers of Fermented Liquors (Tuba, Basi,Tapuy, Bugnay)", mayors_permit_fee_attributes: {:amount => 660}
LineOfBusiness.create name: "Brewers of Fermented Liquors (Tuba, Basi,Tapuy, Bugnay)", mayors_permit_fee_attributes: {:amount => 660}
LineOfBusiness.create name: "Brewers of Fermented Liquors (Tuba, Basi,Tapuy, Bugnay)", mayors_permit_fee_attributes: {:amount => 660}
LineOfBusiness.create name: "Brewers of Fermented Liquors (Tuba, Basi,Tapuy, Bugnay)", mayors_permit_fee_attributes: {:amount => 660}
LineOfBusiness.create name: "Brewers of Fermented Liquors (Tuba, Basi,Tapuy, Bugnay)", mayors_permit_fee_attributes: {:amount => 660}
