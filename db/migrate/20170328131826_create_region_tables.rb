class CreateRegionTables < ActiveRecord::Migration[5.0]
  def change
    create_table :region_tables do |t|
      t.string :account_name
      t.string :sbx_hostname
      t.string :prod_hostname
      t.string :region
      t.string :subregion

      t.timestamps
    end
  end
end
