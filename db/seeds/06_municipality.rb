province = Province.find_by_name("Ifugao")
Municipality.create name: "Lamut", province_id: province.id
