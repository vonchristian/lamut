json.extract! taxpayer, :id, :first_name, :middle_name, :last_name, :mobile_number, :email, :date_of_birth, :sex, :created_at, :updated_at
json.url taxpayer_url(taxpayer, format: :json)