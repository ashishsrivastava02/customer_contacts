# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170328131826) do

  create_table "coupa_release_stats", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.date   "release_date"
    t.string "customer_instance", limit: 99, null: false
    t.string "target_revision",   limit: 20, null: false
    t.string "release_status",    limit: 20, null: false
  end

  create_table "customer_contacts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "Last_Name"
    t.string "First_Name"
    t.string "Company_Name"
    t.string "Email_Address"
    t.string "Prod_Instance"
  end

  create_table "customer_contacts_test", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "Last_Name",     limit: 99
    t.string "First_Name",    limit: 99
    t.string "Company_Name",  limit: 99
    t.string "Email_Address", limit: 99
    t.string "Prod_Instance", limit: 99
  end

  create_table "prod_instances", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "account_name"
    t.string "hostname"
  end

  #create_table "prod_instances_test", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
  #  t.string "account_name", limit: 99, null: false
  #  t.string "hostname",     limit: 99, null: false
  #end

  create_table "region_tables", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "account_name"
    t.string   "sbx_hostname"
    t.string   "prod_hostname"
    t.string   "region"
    t.string   "subregion"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
