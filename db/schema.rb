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

ActiveRecord::Schema.define(version: 20170630114543) do

  create_table "coupa_release_stats", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.date   "release_date"
    t.string "customer_instance", limit: 99, null: false
    t.string "target_revision",   limit: 20, null: false
    t.string "release_status",    limit: 20, null: false
  end

  create_table "customer_contacts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "Last_Name"
    t.string   "First_Name"
    t.string   "Company_Name"
    t.string   "Email_Address"
    t.string   "Prod_Instance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customer_contacts_test", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "Last_Name",     limit: 99
    t.string "First_Name",    limit: 99
    t.string "Company_Name",  limit: 99
    t.string "Email_Address", limit: 99
    t.string "Prod_Instance", limit: 99
  end

  create_table "prod_instances", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "account_name"
    t.string   "hostname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prod_instances_test", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "account_name", limit: 99, null: false
    t.string "hostname",     limit: 99, null: false
  end

  create_table "region_tables", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "account_name"
    t.string   "sbx_hostname"
    t.string   "prod_hostname"
    t.string   "region"
    t.string   "subregion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "region_tables_test", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "account_name",  limit: 99
    t.string "sbx_hostname",  limit: 99
    t.string "prod_hostname", limit: 99
    t.string "region",        limit: 99
    t.string "subregion",     limit: 99
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "wp_ariadminer_connections", primary_key: "connection_id", unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.string   "title",                                  null: false
    t.string   "type",      limit: 8, default: "server", null: false
    t.string   "host",                                   null: false
    t.string   "db_name",                                null: false
    t.string   "user",                                   null: false
    t.string   "pass",                                   null: false
    t.datetime "created",                                null: false
    t.datetime "modified",                               null: false
    t.integer  "author_id"
    t.boolean  "crypt",               default: false,    null: false, unsigned: true
  end

  create_table "wp_commentmeta", primary_key: "meta_id", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci" do |t|
    t.bigint "comment_id",                    default: 0, null: false, unsigned: true
    t.string "meta_key"
    t.text   "meta_value", limit: 4294967295
    t.index ["comment_id"], name: "comment_id", using: :btree
    t.index ["meta_key"], name: "meta_key", length: { meta_key: 191 }, using: :btree
  end

  create_table "wp_comments", primary_key: "comment_ID", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci" do |t|
    t.bigint   "comment_post_ID",                    default: 0,   null: false, unsigned: true
    t.text     "comment_author",       limit: 255,                 null: false
    t.string   "comment_author_email", limit: 100,   default: "",  null: false
    t.string   "comment_author_url",   limit: 200,   default: "",  null: false
    t.string   "comment_author_IP",    limit: 100,   default: "",  null: false
    t.datetime "comment_date",                                     null: false
    t.datetime "comment_date_gmt",                                 null: false
    t.text     "comment_content",      limit: 65535,               null: false
    t.integer  "comment_karma",                      default: 0,   null: false
    t.string   "comment_approved",     limit: 20,    default: "1", null: false
    t.string   "comment_agent",                      default: "",  null: false
    t.string   "comment_type",         limit: 20,    default: "",  null: false
    t.bigint   "comment_parent",                     default: 0,   null: false, unsigned: true
    t.bigint   "user_id",                            default: 0,   null: false, unsigned: true
    t.index ["comment_approved", "comment_date_gmt"], name: "comment_approved_date_gmt", using: :btree
    t.index ["comment_author_email"], name: "comment_author_email", length: { comment_author_email: 10 }, using: :btree
    t.index ["comment_date_gmt"], name: "comment_date_gmt", using: :btree
    t.index ["comment_parent"], name: "comment_parent", using: :btree
    t.index ["comment_post_ID"], name: "comment_post_ID", using: :btree
  end

  create_table "wp_links", primary_key: "link_id", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci" do |t|
    t.string   "link_url",                          default: "",  null: false
    t.string   "link_name",                         default: "",  null: false
    t.string   "link_image",                        default: "",  null: false
    t.string   "link_target",      limit: 25,       default: "",  null: false
    t.string   "link_description",                  default: "",  null: false
    t.string   "link_visible",     limit: 20,       default: "Y", null: false
    t.bigint   "link_owner",                        default: 1,   null: false, unsigned: true
    t.integer  "link_rating",                       default: 0,   null: false
    t.datetime "link_updated",                                    null: false
    t.string   "link_rel",                          default: "",  null: false
    t.text     "link_notes",       limit: 16777215,               null: false
    t.string   "link_rss",                          default: "",  null: false
    t.index ["link_visible"], name: "link_visible", using: :btree
  end

  create_table "wp_options", primary_key: "option_id", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci" do |t|
    t.string "option_name",  limit: 191,        default: "",    null: false
    t.text   "option_value", limit: 4294967295,                 null: false
    t.string "autoload",     limit: 20,         default: "yes", null: false
    t.index ["option_name"], name: "option_name", unique: true, using: :btree
  end

  create_table "wp_postmeta", primary_key: "meta_id", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci" do |t|
    t.bigint "post_id",                       default: 0, null: false, unsigned: true
    t.string "meta_key"
    t.text   "meta_value", limit: 4294967295
    t.index ["meta_key"], name: "meta_key", length: { meta_key: 191 }, using: :btree
    t.index ["post_id"], name: "post_id", using: :btree
  end

  create_table "wp_posts", primary_key: "ID", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci" do |t|
    t.bigint   "post_author",                              default: 0,         null: false, unsigned: true
    t.datetime "post_date",                                                    null: false
    t.datetime "post_date_gmt",                                                null: false
    t.text     "post_content",          limit: 4294967295,                     null: false
    t.text     "post_title",            limit: 65535,                          null: false
    t.text     "post_excerpt",          limit: 65535,                          null: false
    t.string   "post_status",           limit: 20,         default: "publish", null: false
    t.string   "comment_status",        limit: 20,         default: "open",    null: false
    t.string   "ping_status",           limit: 20,         default: "open",    null: false
    t.string   "post_password",                            default: "",        null: false
    t.string   "post_name",             limit: 200,        default: "",        null: false
    t.text     "to_ping",               limit: 65535,                          null: false
    t.text     "pinged",                limit: 65535,                          null: false
    t.datetime "post_modified",                                                null: false
    t.datetime "post_modified_gmt",                                            null: false
    t.text     "post_content_filtered", limit: 4294967295,                     null: false
    t.bigint   "post_parent",                              default: 0,         null: false, unsigned: true
    t.string   "guid",                                     default: "",        null: false
    t.integer  "menu_order",                               default: 0,         null: false
    t.string   "post_type",             limit: 20,         default: "post",    null: false
    t.string   "post_mime_type",        limit: 100,        default: "",        null: false
    t.bigint   "comment_count",                            default: 0,         null: false
    t.index ["post_author"], name: "post_author", using: :btree
    t.index ["post_name"], name: "post_name", length: { post_name: 191 }, using: :btree
    t.index ["post_parent"], name: "post_parent", using: :btree
    t.index ["post_type", "post_status", "post_date", "ID"], name: "type_status_date", using: :btree
  end

  create_table "wp_term_relationships", primary_key: ["object_id", "term_taxonomy_id"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci" do |t|
    t.bigint  "object_id",        default: 0, null: false, unsigned: true
    t.bigint  "term_taxonomy_id", default: 0, null: false, unsigned: true
    t.integer "term_order",       default: 0, null: false
    t.index ["term_taxonomy_id"], name: "term_taxonomy_id", using: :btree
  end

  create_table "wp_term_taxonomy", primary_key: "term_taxonomy_id", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci" do |t|
    t.bigint "term_id",                        default: 0,  null: false, unsigned: true
    t.string "taxonomy",    limit: 32,         default: "", null: false
    t.text   "description", limit: 4294967295,              null: false
    t.bigint "parent",                         default: 0,  null: false, unsigned: true
    t.bigint "count",                          default: 0,  null: false
    t.index ["taxonomy"], name: "taxonomy", using: :btree
    t.index ["term_id", "taxonomy"], name: "term_id_taxonomy", unique: true, using: :btree
  end

  create_table "wp_termmeta", primary_key: "meta_id", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci" do |t|
    t.bigint "term_id",                       default: 0, null: false, unsigned: true
    t.string "meta_key"
    t.text   "meta_value", limit: 4294967295
    t.index ["meta_key"], name: "meta_key", length: { meta_key: 191 }, using: :btree
    t.index ["term_id"], name: "term_id", using: :btree
  end

  create_table "wp_terms", primary_key: "term_id", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci" do |t|
    t.string "name",       limit: 200, default: "", null: false
    t.string "slug",       limit: 200, default: "", null: false
    t.bigint "term_group",             default: 0,  null: false
    t.index ["name"], name: "name", length: { name: 191 }, using: :btree
    t.index ["slug"], name: "slug", length: { slug: 191 }, using: :btree
  end

  create_table "wp_usermeta", primary_key: "umeta_id", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci" do |t|
    t.bigint "user_id",                       default: 0, null: false, unsigned: true
    t.string "meta_key"
    t.text   "meta_value", limit: 4294967295
    t.index ["meta_key"], name: "meta_key", length: { meta_key: 191 }, using: :btree
    t.index ["user_id"], name: "user_id", using: :btree
  end

  create_table "wp_users", primary_key: "ID", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci" do |t|
    t.string   "user_login",          limit: 60,  default: "", null: false
    t.string   "user_pass",                       default: "", null: false
    t.string   "user_nicename",       limit: 50,  default: "", null: false
    t.string   "user_email",          limit: 100, default: "", null: false
    t.string   "user_url",            limit: 100, default: "", null: false
    t.datetime "user_registered",                              null: false
    t.string   "user_activation_key",             default: "", null: false
    t.integer  "user_status",                     default: 0,  null: false
    t.string   "display_name",        limit: 250, default: "", null: false
    t.index ["user_email"], name: "user_email", using: :btree
    t.index ["user_login"], name: "user_login_key", using: :btree
    t.index ["user_nicename"], name: "user_nicename", using: :btree
  end

  create_table "wp_wpdatatables", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "id",                                               null: false
    t.string  "title",                                            null: false
    t.boolean "show_title",                       default: true,  null: false
    t.string  "table_type",         limit: 55,                    null: false
    t.text    "content",            limit: 65535,                 null: false
    t.boolean "filtering",                        default: true,  null: false
    t.boolean "filtering_form",                   default: false, null: false
    t.boolean "sorting",                          default: true,  null: false
    t.boolean "tools",                            default: true,  null: false
    t.boolean "server_side",                      default: false, null: false
    t.boolean "editable",                         default: false, null: false
    t.boolean "inline_editing",                   default: false, null: false
    t.boolean "popover_tools",                    default: false, null: false
    t.string  "editor_roles",                     default: "",    null: false
    t.string  "mysql_table_name",                 default: "",    null: false
    t.boolean "edit_only_own_rows",               default: false, null: false
    t.integer "userid_column_id",                 default: 0,     null: false
    t.integer "display_length",                   default: 10,    null: false
    t.integer "auto_refresh",                     default: 0,     null: false
    t.boolean "fixed_columns",                    default: true,  null: false
    t.string  "chart",              limit: 6,                     null: false
    t.string  "chart_title",                                      null: false
    t.boolean "fixed_layout",                     default: false, null: false
    t.boolean "responsive",                       default: false, null: false
    t.boolean "scrollable",                       default: false, null: false
    t.boolean "word_wrap",                        default: false, null: false
    t.boolean "hide_before_load",                 default: false, null: false
    t.string  "var1",                             default: "",    null: false
    t.string  "var2",                             default: "",    null: false
    t.string  "var3",                             default: "",    null: false
    t.string  "tabletools_config",                default: "",    null: false
    t.index ["id"], name: "id", unique: true, using: :btree
  end

  create_table "wp_wpdatatables_columns", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "id",                                                      null: false
    t.integer "table_id",                                                null: false
    t.string  "orig_header",                                             null: false
    t.string  "display_header",                                          null: false
    t.string  "filter_type",              limit: 14,                     null: false
    t.string  "column_type",              limit: 10,                     null: false
    t.string  "input_type",               limit: 15,    default: "text", null: false
    t.boolean "input_mandatory",                        default: false,  null: false
    t.boolean "id_column",                              default: false,  null: false
    t.boolean "group_column",                           default: false,  null: false
    t.boolean "sort_column",                            default: false,  null: false
    t.boolean "hide_on_phones",                         default: false,  null: false
    t.boolean "hide_on_tablets",                        default: false,  null: false
    t.boolean "use_in_chart",                           default: false,  null: false
    t.boolean "chart_horiz_axis",                       default: false,  null: false
    t.boolean "visible",                                default: true,   null: false
    t.boolean "sum_column",                             default: false,  null: false
    t.boolean "skip_thousands_separator",               default: false,  null: false
    t.string  "width",                    limit: 4,     default: "",     null: false
    t.text    "possible_values",          limit: 65535,                  null: false
    t.string  "default_value",            limit: 100,   default: "",     null: false
    t.string  "css_class",                              default: "",     null: false
    t.string  "text_before",                            default: "",     null: false
    t.string  "text_after",                             default: "",     null: false
    t.text    "formatting_rules",         limit: 65535,                  null: false
    t.text    "calc_formula",             limit: 65535,                  null: false
    t.string  "color",                                  default: "",     null: false
    t.integer "pos",                                    default: 0,      null: false
    t.index ["id"], name: "id", unique: true, using: :btree
  end

end
