class CustomerContact < ApplicationRecord
# attr_accessible :Last_Name, :First_Name, :Company_Name, :Email_Address, :Prod_Instance
@instanceId = Array.new

def self.search(search)
  where("Last_Name LIKE ? OR First_Name LIKE ? OR Company_Name LIKE ? OR Email_Address LIKE ? OR Prod_Instance LIKE ? ", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
end
end
