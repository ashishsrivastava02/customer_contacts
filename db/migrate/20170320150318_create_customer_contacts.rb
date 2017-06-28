class CreateCustomerContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_contacts do |t|
      t.string :Last_Name
      t.string :First_Name
      t.string :Company_Name
      t.string :Email_Address
      t.string :Prod_Instance

      t.timestamps
    end
  end
end
