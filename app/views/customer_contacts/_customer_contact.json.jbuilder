json.extract! customer_contact, :id, :Last_Name, :First_Name, :Company_Name, :Email_Address, :Prod_Instance, :created_at, :updated_at
json.url customer_contact_url(customer_contact, format: :json)
