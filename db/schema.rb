# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 201606101317024113) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "name"
  end

  create_table "active_addresses", force: :cascade do |t|
    t.string   "usage_type"
    t.string   "name"
    t.string   "surname"
    t.string   "country"
    t.string   "country_code"
    t.string   "province"
    t.string   "province_code"
    t.string   "city"
    t.string   "city_code"
    t.string   "district"
    t.string   "district_code"
    t.string   "street"
    t.string   "house_num"
    t.string   "postcode"
    t.string   "telephone"
    t.string   "email"
    t.integer  "parcel_owner"
    t.string   "id_number"
    t.string   "company_tax_no"
    t.string   "company_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "company_address"
    t.boolean  "default_flag",    default: false
    t.integer  "vat_id"
    t.integer  "allocated_to"
  end

  create_table "airports", force: :cascade do |t|
    t.string "airport_code"
    t.string "country"
    t.string "supervised_warehouse"
    t.string "sw_contact"
    t.string "sw_city"
    t.string "sw_address"
    t.string "sw_postcode"
    t.string "sw_tel"
    t.string "sw_email"
  end

  create_table "airwaybill_details", force: :cascade do |t|
    t.string "app_no"
    t.string "string"
    t.string "file_booking"
    t.string "file_silkway_bat_info"
    t.string "file_general_bat_info"
    t.string "file_msds"
    t.string "file_magnetic"
    t.string "file_tele_comm_card"
    t.string "file_invoice"
    t.string "file_car_info"
    t.string "file_hawb"
    t.string "file_awb"
    t.string "file_manifest"
    t.string "file_packing_list"
    t.string "file_product_description"
    t.string "file_flow_document"
    t.string "file_goods_batch_info"
    t.string "file_p1700"
    t.string "file_packing_list_manifest"
  end

  add_index "airwaybill_details", ["app_no"], name: "index_airwaybill_details_on_app_no", using: :btree

  create_table "airwaybills", force: :cascade do |t|
    t.string   "airwaybill_no"
    t.string   "status"
    t.string   "app_no"
    t.integer  "flight_time"
    t.string   "good_type"
    t.integer  "forecasted_num"
    t.decimal  "forecasted_weight",        precision: 8, scale: 2
    t.decimal  "forecasted_volume",        precision: 8, scale: 2
    t.integer  "applicant_id"
    t.integer  "auditor_id"
    t.string   "audit_memo"
    t.string   "file_kc"
    t.datetime "forecasted_to_depot_time"
    t.string   "is_discharge_needed"
    t.string   "driver_name"
    t.string   "driver_telephone"
    t.string   "car_number"
    t.datetime "etd"
    t.datetime "eta"
    t.decimal  "capacity",                 precision: 8, scale: 2
    t.decimal  "gross_weight",             precision: 8, scale: 2
    t.string   "departure_port"
    t.string   "landing_port"
    t.string   "awb_no"
    t.string   "flight_no"
    t.string   "file_awb"
    t.string   "clearance_type"
    t.string   "file_vat"
    t.string   "file_commodity_reg_form"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file_ac"
    t.string   "info_status"
    t.string   "shpmt_status"
    t.string   "partial_clr_reason"
    t.datetime "pickup_time"
    t.datetime "clr_time"
    t.datetime "deliver_time"
    t.string   "sender_id"
    t.string   "parcel_type"
    t.string   "landing_airport"
    t.string   "destination"
    t.string   "clr_method"
    t.string   "is_seperated"
    t.string   "hawb_no"
    t.string   "recipient_country"
    t.string   "is_pickup_needed"
    t.string   "pickup_address"
    t.string   "pickup_contacts"
    t.string   "pickup_num"
    t.string   "volume_measured_in_depot"
    t.string   "weight_measured_in_depot"
    t.string   "number_measured_in_depot"
    t.string   "is_weight_bill_needed"
    t.string   "file_weight_bill"
    t.string   "forecasted_pcl_unit"
    t.jsonb    "addr_info",                                        default: {},                                                                                                                                                                                                                                                                                                                                            null: false
    t.string   "sw_contact"
    t.string   "sw_city"
    t.string   "sw_address"
    t.string   "sw_postcode"
    t.string   "sw_tel"
    t.string   "sw_email"
    t.string   "rcpt_contact"
    t.string   "rcpt_city"
    t.string   "rcpt_address"
    t.string   "rcpt_postcode"
    t.string   "rcpt_tel"
    t.string   "rcpt_email"
    t.string   "transport_depot"
    t.string   "transport_depot_email"
    t.string   "truck_plate"
    t.datetime "tetd"
    t.datetime "teta"
    t.string   "total_value"
    t.datetime "date_to_sw"
    t.string   "agent"
    t.string   "missing_pieces"
    t.string   "cargo_note"
    t.string   "file_post_list"
    t.string   "file_file_p"
    t.string   "post_num"
    t.string   "mrn_code"
    t.string   "volume"
    t.string   "chargeable_weight"
    t.string   "volume_weight"
    t.string   "email_resend",                                     default: "no"
    t.jsonb    "email_status",                                     default: {"file_ac"=>"not-send", "file_kc"=>"not-send", "file_msds"=>"not-send", "file_p1700"=>"not-send", "file_booking"=>"not-send", "file_invoice"=>"not-send", "file_magnetic"=>"not-send", "file_tele_comm_card"=>"not-send", "file_general_bat_info"=>"not-send", "file_silkway_bat_info"=>"not-send", "file_packing_list_manifest"=>"not-send"}
    t.string   "aa_id"
    t.string   "mrn_doc",                                                                                                                                                                                                                                                                                                                                                                                                               array: true
    t.json     "awb_status",                                       default: {}
    t.string   "invoice_no"
    t.json     "file_t1_docs"
    t.json     "file_others"
    t.json     "file_others_memo",                                 default: []
    t.string   "arrived"
    t.json     "contained_amazon_id",                              default: []
    t.string   "file_pod"
    t.string   "currency"
    t.string   "info_contact"
    t.string   "info_city"
    t.string   "info_address"
    t.string   "info_postcode"
    t.string   "info_tel"
    t.string   "info_email"
    t.string   "costoms_code"
    t.json     "contained_parcels",                                default: []
    t.decimal  "contained_parcels_weight", precision: 8, scale: 2, default: 0.0
    t.json     "file_vats"
    t.json     "vat_info",                                         default: []
  end

  add_index "airwaybills", ["created_at", "airwaybill_no"], name: "index_airwaybills_on_created_at_and_airwaybill_no", using: :btree
  add_index "airwaybills", ["status"], name: "index_airwaybills_on_status", using: :btree

  create_table "areas", force: :cascade do |t|
    t.string  "area_name"
    t.string  "area_level"
    t.integer "parent_area_id"
    t.integer "child_area_id",  array: true
    t.string  "country_code"
  end

  create_table "awb_clearances", force: :cascade do |t|
    t.string   "awb_no"
    t.decimal  "amount",           precision: 12, scale: 2
    t.string   "file_declaration"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "clearance_date"
    t.decimal  "rate",             precision: 10, scale: 4
    t.decimal  "eur_amount",       precision: 10, scale: 2
    t.json     "contained_hscode",                          default: []
  end

  create_table "awb_fares", force: :cascade do |t|
    t.integer  "owner"
    t.string   "awb_no"
    t.string   "fare_type"
    t.string   "item"
    t.jsonb    "fare_detail"
    t.decimal  "total_amount",     precision: 12, scale: 2
    t.string   "currency"
    t.decimal  "total_cny_amount", precision: 12, scale: 2
    t.string   "pmnt_status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "exchange_rate",    precision: 10, scale: 4
    t.integer  "receipt_id"
    t.integer  "flight_time"
    t.string   "file_declaration"
  end

  create_table "awb_files", force: :cascade do |t|
    t.integer "file_owner"
    t.string  "file_kc"
    t.string  "file_ac"
    t.string  "sender"
    t.string  "company"
    t.string  "country",    default: "cn"
    t.string  "province"
    t.string  "city"
    t.string  "district"
    t.string  "address"
    t.string  "postcode"
    t.string  "awb_type"
    t.integer "shipper_id"
  end

  add_index "awb_files", ["file_owner"], name: "index_awb_files_on_file_owner", using: :btree

  create_table "awb_invoices", force: :cascade do |t|
    t.string  "airwaybill_no"
    t.string  "shipping_mark"
    t.string  "description"
    t.string  "case_no"
    t.string  "pcs"
    t.string  "net_weight"
    t.string  "gross_weight"
    t.string  "unit_price"
    t.string  "amount"
    t.string  "state"
    t.decimal "web_price",     precision: 8, scale: 2
    t.string  "web_currency"
  end

  add_index "awb_invoices", ["airwaybill_no"], name: "index_awb_invoices_on_airwaybill_no", using: :btree
  add_index "awb_invoices", ["shipping_mark"], name: "index_awb_invoices_on_shipping_mark", using: :btree

  create_table "awb_logs", force: :cascade do |t|
    t.string   "airwaybill_no"
    t.string   "log_info"
    t.string   "status"
    t.string   "log_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "awb_logs", ["airwaybill_no"], name: "index_awb_logs_on_airwaybill_no", using: :btree

  create_table "awb_nos", force: :cascade do |t|
    t.string "airwaybill_no"
    t.string "status"
  end

  add_index "awb_nos", ["status"], name: "index_awb_nos_on_status", using: :btree

  create_table "awb_parcels", force: :cascade do |t|
    t.string   "airwaybill_no"
    t.string   "parcel_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "awb_parcels", ["airwaybill_no"], name: "index_awb_parcels_on_airwaybill_no", using: :btree
  add_index "awb_parcels", ["parcel_no"], name: "index_awb_parcels_on_parcel_no", using: :btree

  create_table "awb_products", force: :cascade do |t|
    t.string  "airwaybill_no"
    t.string  "shipping_mark"
    t.string  "description"
    t.string  "product_link"
    t.string  "sku"
    t.string  "hscode"
    t.string  "item_description"
    t.string  "online_retail_price"
    t.string  "currency"
    t.decimal "web_price",           precision: 8, scale: 2
    t.string  "web_currency"
  end

  add_index "awb_products", ["airwaybill_no"], name: "index_awb_products_on_airwaybill_no", using: :btree
  add_index "awb_products", ["shipping_mark"], name: "index_awb_products_on_shipping_mark", using: :btree

  create_table "awb_remarks", force: :cascade do |t|
    t.string   "awb_no"
    t.string   "remark_type"
    t.string   "remark"
    t.integer  "created_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "awb_remarks", ["awb_no"], name: "index_awb_remarks_on_awb_no", using: :btree

  create_table "az_catelogs", force: :cascade do |t|
    t.string "catelog_name", default: ""
  end

  create_table "az_products", force: :cascade do |t|
    t.integer "catelog_id"
    t.string  "url"
    t.string  "name"
    t.string  "brand"
    t.string  "score"
    t.string  "details"
    t.jsonb   "images"
    t.jsonb   "product_parameters"
    t.jsonb   "categories"
    t.string  "asin"
    t.string  "description"
    t.jsonb   "product_sku"
    t.string  "comments_count"
    t.jsonb   "short_description"
  end

  create_table "batch_infos", force: :cascade do |t|
    t.string   "batch_num"
    t.string   "ref_nums",                                                                           array: true
    t.string   "batch_type"
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.string   "contract_number"
    t.string   "serial_number"
    t.string   "shpmt_product"
    t.string   "recipient_country"
    t.string   "send_country"
    t.integer  "batch_owner"
    t.string   "pdf_status"
    t.string   "shpmt_value"
    t.string   "awb_no"
    t.string   "postal_type"
    t.decimal  "total_weight",      precision: 8, scale: 2
    t.string   "pmnt_status"
    t.decimal  "price",             precision: 8, scale: 2
    t.string   "currency"
    t.string   "process_status",                            default: "wait_to_process"
    t.string   "service_num"
  end

  add_index "batch_infos", ["batch_num"], name: "index_batch_infos_on_batch_num", unique: true, using: :btree
  add_index "batch_infos", ["created_at"], name: "index_batch_infos_on_created_at", using: :btree

  create_table "callback_queues", force: :cascade do |t|
    t.string   "callback_interface"
    t.string   "reference_id"
    t.string   "callback_uri"
    t.string   "status"
    t.string   "run_batch",            default: ""
    t.datetime "last_callback_time"
    t.string   "last_callback_result"
    t.integer  "try_amount"
    t.integer  "tried_amount"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_index "callback_queues", ["callback_interface", "status"], name: "index_callback_queues_on_callback_interface_and_status", using: :btree

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "client_id_cards", force: :cascade do |t|
    t.string   "id_card"
    t.string   "name"
    t.string   "country"
    t.string   "valid_channel"
    t.boolean  "valid_status",  default: false
    t.string   "valid_msg"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "client_id_cards", ["id_card"], name: "index_client_id_cards_on_id_card", using: :btree

  create_table "collection_orders", force: :cascade do |t|
    t.string   "order_num"
    t.integer  "order_owner"
    t.string   "collection_parcel_nums"
    t.string   "description"
    t.string   "check_file"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "check_file_1"
    t.string   "check_file_2"
  end

  create_table "collection_parcels", force: :cascade do |t|
    t.string   "c_parcel_num"
    t.string   "order_num"
    t.integer  "owner"
    t.jsonb    "inbound_info",      default: {}
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status",            default: "wait_to_inbound"
    t.string   "process_status",    default: "wait_to_process"
    t.string   "service_num"
    t.string   "related_batch_num"
    t.boolean  "outbound_flag",     default: false
  end

  create_table "commodity_infos", force: :cascade do |t|
    t.string   "english_name"
    t.string   "chinese_name"
    t.decimal  "net_weight",       precision: 8, scale: 2
    t.string   "package"
    t.string   "original_country"
    t.decimal  "sale_price",       precision: 8, scale: 2
    t.string   "description"
    t.string   "currency"
    t.string   "status"
    t.string   "memo"
    t.boolean  "process_status",                           default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "barcode"
    t.integer  "owner"
    t.string   "brand"
  end

  create_table "countries", force: :cascade do |t|
    t.string "country_name"
    t.string "country_code"
  end

  create_table "credits", force: :cascade do |t|
    t.datetime "payment_time"
    t.string   "credit_type"
    t.string   "tx_num"
    t.decimal  "credit_amt",   precision: 8, scale: 2
    t.decimal  "current_amt",  precision: 8, scale: 2
    t.string   "remark"
    t.integer  "owner"
    t.string   "sync_status"
  end

  add_index "credits", ["owner"], name: "index_credits_on_owner", using: :btree
  add_index "credits", ["tx_num"], name: "index_credits_on_tx_num", using: :btree

  create_table "currencies", force: :cascade do |t|
    t.string   "currency_name"
    t.decimal  "currency_price",   precision: 7, scale: 4
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
    t.string   "to_currency_name",                         default: "人民币"
  end

  create_table "depots", force: :cascade do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.string   "city"
    t.string   "country"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "province"
    t.string   "district"
    t.string   "street"
    t.string   "street_number"
    t.string   "house_number"
    t.string   "postcode"
    t.string   "telephone"
  end

  create_table "documentary_commodities", force: :cascade do |t|
    t.string   "status"
    t.string   "commodity_num"
    t.string   "operator"
    t.integer  "operator_id"
    t.string   "logistic_role"
    t.datetime "ETD"
    t.datetime "ETA"
    t.integer  "capacity"
    t.integer  "gross_weight"
    t.string   "departure_port"
    t.string   "landing_port"
    t.string   "awb_no"
    t.string   "flight_no"
    t.text     "memo"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "awb_file"
    t.string   "invoice_file"
    t.string   "pack_list"
    t.string   "commodity_message"
    t.integer  "success_per"
    t.integer  "fail_per"
    t.string   "good_file"
    t.string   "t1_file"
    t.string   "cmr_file"
    t.date     "pick_time"
    t.date     "deliver_time"
    t.integer  "sum"
    t.integer  "received"
    t.jsonb    "mrn",               default: {}
    t.jsonb    "file_path",         default: {}
    t.string   "mail"
    t.integer  "return_per"
    t.string   "awb_file_name"
    t.string   "invoice_no"
    t.string   "mawb"
    t.integer  "part_num",          default: 1
  end

  create_table "documentary_commodity_lists", force: :cascade do |t|
    t.string   "logistic"
    t.string   "recipient_name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "country_code"
    t.string   "country"
    t.string   "postcode"
    t.string   "declare_name"
    t.string   "hscode"
    t.string   "inner_code"
    t.string   "order_num"
    t.datetime "delivery_time"
    t.string   "package_num"
    t.string   "status"
    t.string   "commodity_num"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.text     "memo"
    t.string   "phone"
    t.string   "country_type"
    t.string   "fba_code"
    t.string   "product_code"
    t.string   "gross_weight"
    t.string   "volume"
    t.string   "remarks"
    t.string   "customs_code"
    t.string   "link"
    t.string   "composition"
    t.string   "shipment_no"
    t.string   "product_id"
    t.string   "fba_country"
    t.decimal  "weight",         precision: 8, scale: 2
    t.decimal  "value",          precision: 8, scale: 2
    t.decimal  "total_weight",   precision: 8, scale: 2
    t.integer  "quantity"
  end

  create_table "dpd_routes", force: :cascade do |t|
    t.string "version"
    t.string "expiration"
    t.string "destination_country"
    t.string "begin_post_code"
    t.string "end_post_code"
    t.string "service_codes"
    t.string "routing_places"
    t.string "sending_date"
    t.string "o_sort"
    t.string "d_depot"
    t.string "grouping_priority"
    t.string "d_sort"
    t.string "barcode_id"
    t.string "unique_code"
  end

  create_table "dpd_services", force: :cascade do |t|
    t.string "version"
    t.string "expiration"
    t.string "service_code"
    t.string "service_text"
    t.string "service_mark"
    t.string "service_elements"
  end

  create_table "epp_transactions", force: :cascade do |t|
    t.string   "tx_num"
    t.decimal  "request_amt",    precision: 8, scale: 2
    t.decimal  "callback_amt",   precision: 8, scale: 2
    t.string   "currency"
    t.string   "country"
    t.string   "trade_no"
    t.string   "current_status"
    t.string   "status_reason"
    t.string   "payway"
    t.string   "paytype"
    t.string   "redirect_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.jsonb    "params",                                 default: {}, null: false
  end

  add_index "epp_transactions", ["tx_num"], name: "index_epp_transactions_on_tx_num", using: :btree

  create_table "exchanges", force: :cascade do |t|
    t.datetime "par_time"
    t.string   "par_module"
    t.string   "par_key"
    t.string   "par_name"
    t.string   "par_value"
  end

  create_table "export_users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "export_users", ["email"], name: "index_export_users_on_email", unique: true, using: :btree
  add_index "export_users", ["reset_password_token"], name: "index_export_users_on_reset_password_token", unique: true, using: :btree

  create_table "extra_pays", force: :cascade do |t|
    t.string   "ep_num"
    t.string   "parcel_num"
    t.string   "extra_type"
    t.decimal  "extra_amt",        precision: 8, scale: 2
    t.decimal  "extra_fee",        precision: 8, scale: 2
    t.string   "reason"
    t.string   "pmnt_status"
    t.string   "pmnt_currency"
    t.datetime "pmnt_time"
    t.integer  "owner"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "country"
    t.jsonb    "extra_amt_option",                         default: {},             null: false
    t.string   "export_status",                            default: "not-exported"
    t.string   "import_num"
  end

  add_index "extra_pays", ["ep_num"], name: "index_extra_pays_on_ep_num", using: :btree
  add_index "extra_pays", ["owner"], name: "index_extra_pays_on_owner", using: :btree

  create_table "fare_receipts", force: :cascade do |t|
    t.integer  "owner"
    t.integer  "flight_time"
    t.string   "receipt_no"
    t.string   "fare_type"
    t.decimal  "total_amount",     precision: 12, scale: 2
    t.string   "currency"
    t.decimal  "total_cny_amount", precision: 12, scale: 2
    t.string   "pmnt_status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file_invoice"
  end

  create_table "fba_depot_infos", force: :cascade do |t|
    t.string   "fba_depot_code"
    t.string   "fba_depot_name"
    t.string   "fba_depot_country"
    t.string   "fba_depot_province"
    t.string   "fba_depot_city"
    t.string   "fba_depot_district"
    t.string   "fba_depot_street"
    t.string   "fba_depot_street_number"
    t.string   "fba_depot_house_number"
    t.string   "fba_depot_postcode"
    t.string   "fba_depot_telephone"
    t.string   "is_use",                  default: "Y"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_private",              default: false
    t.string   "ts_type"
    t.integer  "user_id"
  end

  add_index "fba_depot_infos", ["fba_depot_code"], name: "index_fba_depot_infos_on_fba_depot_code", using: :btree

  create_table "fba_kcustomer_infos", force: :cascade do |t|
    t.string   "company_name"
    t.string   "company_address"
    t.string   "invoice_address"
    t.string   "bank_account"
    t.string   "contact"
    t.string   "telephone"
    t.string   "email"
    t.string   "password"
    t.string   "nickname"
    t.string   "country"
    t.string   "file_verify"
    t.integer  "owner"
    t.string   "status",          default: "created"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "refused_reason"
    t.string   "currency_pay"
    t.string   "re_pswd"
    t.string   "terms_agree"
  end

  create_table "fbe_nums", force: :cascade do |t|
    t.string   "fbe_num"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fbe_nums", ["fbe_num"], name: "index_fbe_nums_on_fbe_num", unique: true, using: :btree

  create_table "feedbacks", force: :cascade do |t|
    t.string   "telephone"
    t.string   "message"
    t.string   "email"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status",     default: "unread"
  end

  create_table "flight_counts", force: :cascade do |t|
    t.integer "flight_time"
    t.integer "count",       default: 1
  end

  create_table "flight_nos", force: :cascade do |t|
    t.integer  "flight_time"
    t.string   "flight_no"
    t.integer  "created_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "etd"
    t.datetime "eta"
  end

  create_table "flight_seqs", force: :cascade do |t|
    t.integer "flight_time"
    t.integer "seq",         default: 1
  end

  create_table "his_redirects", force: :cascade do |t|
    t.string   "email"
    t.string   "rand_num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hscodes", force: :cascade do |t|
    t.string "hscode"
  end

  create_table "id_infos", force: :cascade do |t|
    t.string   "id_num"
    t.string   "id_card_front"
    t.string   "id_card_back"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "status",         default: "created"
    t.integer  "owner"
    t.string   "refused_reason"
  end

  create_table "international_returned_parcels", force: :cascade do |t|
    t.string   "parcel_num"
    t.string   "status"
    t.decimal  "price",          precision: 8, scale: 2
    t.string   "treatment"
    t.string   "new_parcel_num"
    t.string   "memo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "parcel_owner"
    t.string   "pmnt_status"
    t.datetime "pmnt_time"
  end

  create_table "invoices", force: :cascade do |t|
    t.jsonb    "invoice_address_info"
    t.jsonb    "included_items_info"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tx_num"
    t.string   "inv_type"
    t.string   "country"
    t.string   "invoice_no"
    t.string   "invoice_date"
    t.string   "net_price"
    t.string   "vat"
    t.string   "gross_price"
    t.integer  "userid"
    t.string   "payment_type"
  end

  add_index "invoices", ["created_at", "tx_num"], name: "index_invoices_on_created_at_and_tx_num", using: :btree

  create_table "load_plans", force: :cascade do |t|
    t.integer "flight_time"
    t.string  "file_load_plan"
    t.jsonb   "content",        default: {}
  end

  create_table "lot_nos", force: :cascade do |t|
    t.string   "lot_no"
    t.integer  "lot_type"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "lot_nos", ["lot_no"], name: "index_lot_nos_on_lot_no", using: :btree

  create_table "map_locations", force: :cascade do |t|
    t.string "unique_code"
    t.string "country"
    t.string "city"
    t.string "street"
    t.string "postcode"
    t.float  "longitude"
    t.float  "latitude"
    t.string "status"
    t.date   "effective_beg"
    t.date   "effective_end"
    t.string "source"
    t.jsonb  "info"
  end

  create_table "material_orders", force: :cascade do |t|
    t.string   "order_num"
    t.integer  "order_owner"
    t.jsonb    "rcpt_address_info",                              default: {}, null: false
    t.jsonb    "material_info",                                  default: {}, null: false
    t.decimal  "amount",                 precision: 8, scale: 2
    t.string   "payment_status"
    t.string   "export_status"
    t.string   "payment_currency"
    t.datetime "paid_at"
    t.decimal  "payment_amount",         precision: 8, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "waybill_no"
    t.string   "country"
    t.string   "shpmt_status"
    t.string   "cancel_type"
    t.string   "refund_way"
    t.string   "refund_account"
    t.datetime "cancel_date"
    t.string   "cancel_reason"
    t.decimal  "deduction_shipping_fee", precision: 8, scale: 2
    t.decimal  "deduction_return_fee",   precision: 8, scale: 2
  end

  create_table "materials", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "specification"
    t.integer  "nums_per_unit"
    t.string   "least_sale"
    t.string   "image_link"
    t.boolean  "sell_status",                           default: true
    t.decimal  "price",         precision: 8, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "de_name"
    t.decimal  "de_net_price",  precision: 8, scale: 2
    t.decimal  "de_tax",        precision: 8, scale: 2
    t.string   "nl_name"
    t.decimal  "nl_net_price",  precision: 8, scale: 2
    t.decimal  "nl_price",      precision: 8, scale: 2
    t.decimal  "nl_tax",        precision: 8, scale: 2
  end

  create_table "milk_lists", force: :cascade do |t|
    t.string  "commodity_no"
    t.string  "hs_code"
    t.string  "goods_name"
    t.string  "english_name"
    t.string  "chinese_name"
    t.string  "specification"
    t.string  "description"
    t.decimal "net_weight",            precision: 8,  scale: 2
    t.string  "unit"
    t.decimal "price",                 precision: 8,  scale: 2
    t.decimal "rmb_price",             precision: 8,  scale: 2
    t.string  "currency"
    t.string  "original_country"
    t.string  "original_country_code"
    t.string  "barcode"
    t.string  "brand"
    t.string  "port_declaration"
    t.decimal "sale_price",            precision: 10, scale: 2
    t.boolean "platinum_flag",                                  default: false
    t.decimal "airport_rmb_price",     precision: 10, scale: 2
    t.decimal "xa_declare_eur_price",  precision: 10, scale: 2
    t.decimal "xa_declare_rmb_price",  precision: 10, scale: 2
  end

  add_index "milk_lists", ["commodity_no"], name: "index_milk_lists_on_commodity_no", using: :btree

  create_table "milkvips", force: :cascade do |t|
    t.string   "payment_no"
    t.decimal  "amount",                   precision: 8, scale: 2
    t.datetime "payment_date"
    t.string   "payment_currency"
    t.string   "payment_type"
    t.string   "country"
    t.string   "choice"
    t.integer  "owner"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "shpmt_product"
    t.string   "rank"
    t.string   "cancel_membership_reason"
    t.string   "applicant_name"
    t.string   "applicant_account"
  end

  create_table "news", force: :cascade do |t|
    t.string   "title",        default: ""
    t.text     "content"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "created_by"
    t.string   "created_role"
  end

  create_table "pallets", force: :cascade do |t|
    t.string   "pallet_num"
    t.string   "parcel_num"
    t.string   "creater"
    t.string   "status",      default: "initialized"
    t.datetime "released_at"
    t.string   "releaser"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pallets", ["pallet_num", "status"], name: "index_pallets_on_pallet_num_and_status", using: :btree
  add_index "pallets", ["parcel_num"], name: "index_pallets_on_parcel_num", using: :btree

  create_table "parcel_blocking_details", force: :cascade do |t|
    t.string   "status"
    t.integer  "parcel_payment_id"
    t.jsonb    "return_address",    default: {}
    t.jsonb    "depot_result",      default: {}
    t.string   "result_type"
    t.string   "memo"
    t.integer  "operator_id"
    t.string   "operator"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.jsonb    "block_reason",      default: []
    t.integer  "owner_id"
    t.string   "import_num"
    t.jsonb    "parcel_num",        default: []
    t.jsonb    "parcel_num_return", default: []
  end

  add_index "parcel_blocking_details", ["import_num"], name: "index_parcel_blocking_details_on_import_num", using: :btree

  create_table "parcel_blocking_logs", force: :cascade do |t|
    t.string   "status"
    t.integer  "block_type"
    t.string   "block_reason"
    t.jsonb    "goods_info",   default: []
    t.jsonb    "goods_pics",   default: []
    t.string   "memo"
    t.integer  "operator_id"
    t.string   "operator"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "import_num"
    t.jsonb    "parcel_num",   default: []
  end

  add_index "parcel_blocking_logs", ["import_num"], name: "index_parcel_blocking_logs_on_import_num", using: :btree

  create_table "parcel_claims", force: :cascade do |t|
    t.string   "work_num"
    t.string   "shpmt_product"
    t.string   "reason"
    t.string   "applicant_name"
    t.string   "applicant_account"
    t.string   "parcel_num"
    t.string   "ishpmt_num"
    t.jsonb    "recipient_info",    default: {}, null: false
    t.jsonb    "goods_info",        default: {}, null: false
    t.string   "invoice_pic1"
    t.string   "invoice_pic2"
    t.string   "invoice_pic3"
    t.string   "invoice_pic4"
    t.string   "invoice_pic5"
    t.string   "id_card_pic"
    t.string   "state"
    t.integer  "created_by"
    t.integer  "processed_by"
    t.text     "memo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "invoice_pic6"
    t.string   "invoice_pic7"
    t.string   "invoice_pic8"
    t.string   "invoice_pic9"
    t.string   "invoice_pic10"
    t.string   "invoice_pic11"
    t.string   "invoice_pic12"
    t.string   "self_return_no"
    t.string   "auth_pdf"
  end

  create_table "parcel_contracts", force: :cascade do |t|
    t.string   "lgc_contract_num"
    t.datetime "effective_date"
    t.datetime "expiring_date"
    t.string   "customer_num"
    t.decimal  "contract_ecash_balance", precision: 10, scale: 2, default: 0.0
    t.string   "contract_ecash_cur"
    t.datetime "created_at",                                                    null: false
    t.datetime "updated_at",                                                    null: false
    t.text     "content"
  end

  add_index "parcel_contracts", ["lgc_contract_num"], name: "index_parcel_contracts_on_lgc_contract_num", using: :btree

  create_table "parcel_detail_infos", force: :cascade do |t|
    t.string   "amazon_id"
    t.string   "mark"
    t.string   "file_pic"
    t.string   "file_link_pic"
    t.string   "web_screenshoot",                                      default: "yes"
    t.integer  "owner_id"
    t.string   "sku"
    t.integer  "quantity"
    t.string   "HSCode"
    t.decimal  "pricePerUnit"
    t.decimal  "declare_price"
    t.string   "currency"
    t.string   "name"
    t.decimal  "weightPerUnit"
    t.decimal  "total_net_weight"
    t.decimal  "gross_weight"
    t.decimal  "total_gross_weight"
    t.string   "description"
    t.string   "link"
    t.string   "nameInEnglish"
    t.string   "hs_reviser"
    t.string   "status"
    t.string   "reason"
    t.string   "awb_no"
    t.string   "memo"
    t.string   "HSCode_ees"
    t.string   "bti"
    t.json     "review_list",                                          default: []
    t.decimal  "tax_rate",                    precision: 10, scale: 4
    t.jsonb    "item_category"
    t.string   "file_pic_thumb_file_name"
    t.string   "file_pic_thumb_content_type"
    t.integer  "file_pic_thumb_file_size"
    t.datetime "file_pic_thumb_updated_at"
    t.string   "import_num"
  end

  add_index "parcel_detail_infos", ["awb_no"], name: "index_parcel_detail_infos_on_awb_no", using: :btree

  create_table "parcel_details", force: :cascade do |t|
    t.string   "parcel_num"
    t.decimal  "measuring_weight",      precision: 8, scale: 2
    t.decimal  "measuring_length",      precision: 8, scale: 2
    t.decimal  "measuring_width",       precision: 8, scale: 2
    t.decimal  "measuring_height",      precision: 8, scale: 2
    t.string   "act_lgc_product"
    t.decimal  "weight_of_charging",    precision: 8, scale: 2
    t.decimal  "measuring_price",       precision: 8, scale: 2
    t.string   "currency"
    t.decimal  "act_price",             precision: 8, scale: 2
    t.jsonb    "add_services_info"
    t.decimal  "add_total_price",       precision: 8, scale: 2
    t.decimal  "total_price",           precision: 8, scale: 2
    t.decimal  "act_total_price",       precision: 8, scale: 2
    t.text     "discount_reason",                                                                    array: true
    t.decimal  "extra_money",           precision: 8, scale: 2
    t.text     "extra_money_reason"
    t.decimal  "handling_fee",          precision: 8, scale: 2
    t.jsonb    "shpmt_address_info",                            default: {},            null: false
    t.jsonb    "shpmt_goods_info",                              default: {},            null: false
    t.text     "memo"
    t.string   "shpmt_status",                                  default: "initialized"
    t.string   "pmnt_status",                                   default: "unpaid"
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.jsonb    "extra_money_info",                              default: {},            null: false
    t.string   "payment_currency"
    t.decimal  "payment_amount",        precision: 8, scale: 2
    t.datetime "paid_at"
    t.jsonb    "reference_number_info"
    t.string   "export_status"
    t.integer  "vat_need"
  end

  add_index "parcel_details", ["act_lgc_product"], name: "index_parcel_details_on_act_lgc_product", using: :btree
  add_index "parcel_details", ["paid_at"], name: "index_parcel_details_on_paid_at", using: :btree
  add_index "parcel_details", ["parcel_num"], name: "index_parcel_details_on_parcel_num", using: :btree
  add_index "parcel_details", ["reference_number_info"], name: "index_parcel_details_on_reference_number_info", using: :gin
  add_index "parcel_details", ["shpmt_status"], name: "index_parcel_details_on_shpmt_status", using: :btree

  create_table "parcel_extra_details", force: :cascade do |t|
    t.string   "sku_num"
    t.string   "currency"
    t.string   "name"
    t.string   "description"
    t.string   "link"
    t.string   "hscode"
    t.integer  "owner_id"
    t.string   "sku_id"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "status"
    t.string   "file_pic"
    t.string   "web_screenshoot"
    t.string   "bti"
    t.string   "awb_no"
    t.decimal  "tax_rate",        precision: 10, scale: 4
    t.decimal  "online_price",    precision: 10, scale: 2
    t.decimal  "net_weight",      precision: 10, scale: 2
    t.decimal  "gross_weight",    precision: 10, scale: 2
    t.decimal  "declare_price",   precision: 10, scale: 2
    t.jsonb    "item_category"
  end

  create_table "parcel_mapping_numbers", force: :cascade do |t|
    t.string   "parcel_num"
    t.string   "mapping_num"
    t.string   "remark"
    t.string   "mapping_type"
    t.string   "valid_flag",   default: "Y"
    t.string   "flag",         default: "Y"
    t.integer  "parcel_owner"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "parcel_mapping_numbers", ["mapping_num", "mapping_type"], name: "index_parcel_mapping_numbers_on_mapping_num_and_mapping_type", using: :btree
  add_index "parcel_mapping_numbers", ["parcel_num"], name: "index_parcel_mapping_numbers_on_parcel_num", using: :btree

  create_table "parcel_operation_logs", force: :cascade do |t|
    t.string   "parcel_num"
    t.string   "shipment_number"
    t.string   "operation"
    t.string   "remark"
    t.integer  "operator_id"
    t.string   "operator"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "additional_number"
    t.boolean  "match_flag"
    t.string   "bill_number"
    t.string   "question_code",               default: "0"
    t.string   "db_source",                   default: "db_main"
    t.integer  "source_id",         limit: 8
    t.datetime "sync_at"
    t.integer  "flight_count_id"
    t.integer  "problem_parcel_id"
  end

  add_index "parcel_operation_logs", ["shipment_number", "operation"], name: "index_parcel_operation_logs_on_shipment_number_and_operation", using: :btree
  add_index "parcel_operation_logs", ["source_id", "db_source"], name: "index_parcel_operation_logs_on_source_id_and_db_source", using: :btree

  create_table "parcel_payments", force: :cascade do |t|
    t.string   "pmnt_meth"
    t.string   "tx_num"
    t.text     "score_exch_rule"
    t.datetime "paid_at"
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
    t.string   "related_num",                                                       array: true
    t.decimal  "amount",          precision: 8, scale: 2
    t.string   "currency"
    t.decimal  "cur2rmb_rate",    precision: 8, scale: 4
    t.string   "status"
    t.integer  "parcel_owner"
    t.string   "country"
    t.jsonb    "inv_addr_info",                           default: {}, null: false
    t.string   "payment_type"
  end

  add_index "parcel_payments", ["pmnt_meth"], name: "index_parcel_payments_on_pmnt_meth", using: :btree

  create_table "parcel_retours", force: :cascade do |t|
    t.string   "parcel_num"
    t.string   "self_return_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parcel_shipments", force: :cascade do |t|
    t.string   "parcel_num"
    t.string   "shpmt_purpose"
    t.integer  "serial_num"
    t.string   "status"
    t.string   "origin"
    t.string   "termination"
    t.string   "shpmt_num"
    t.string   "partner_num"
    t.string   "shpmt_carrier"
    t.string   "means_of_transpor"
    t.string   "model_of_transpor"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "status_declaration",  default: "00"
    t.string   "batch_num"
    t.string   "mrn_code"
    t.string   "airline_IATA_code"
    t.string   "mawb"
    t.string   "flight_code"
    t.datetime "flight_arrival_date"
  end

  add_index "parcel_shipments", ["parcel_num"], name: "index_parcel_shipments_on_parcel_num", using: :btree
  add_index "parcel_shipments", ["shpmt_carrier", "status", "shpmt_num"], name: "index_carrier_and_status_num", using: :btree

  create_table "parcel_tracking_infos", force: :cascade do |t|
    t.string   "parcel_num"
    t.integer  "serial_num"
    t.string   "tp_serial_num"
    t.datetime "when"
    t.string   "origin"
    t.string   "termination"
    t.string   "who"
    t.string   "who_tel"
    t.string   "what"
    t.string   "status"
    t.text     "tracking_info"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "parcel_owner"
    t.string   "push_tag",      default: "unpushed"
    t.integer  "push_num",      default: 0
  end

  add_index "parcel_tracking_infos", ["parcel_num"], name: "index_parcel_tracking_infos_on_parcel_num", using: :btree
  add_index "parcel_tracking_infos", ["parcel_owner", "created_at"], name: "index_parcel_tracking_infos_on_parcel_owner_and_created_at", using: :btree

  create_table "parcel_used_numbers", force: :cascade do |t|
    t.string   "number"
    t.string   "number_type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "flight_time"
  end

  add_index "parcel_used_numbers", ["number"], name: "index_parcel_used_numbers_on_number", using: :btree

  create_table "parcel_valuations", force: :cascade do |t|
    t.string   "lgc_contract_num"
    t.string   "lgc_product"
    t.string   "origin_cntry"
    t.string   "term_cntry"
    t.decimal  "maxi_total_length",  precision: 8, scale: 2
    t.decimal  "weight_of_charging", precision: 8, scale: 2
    t.integer  "count_of_charging"
    t.integer  "accumulated_count"
    t.decimal  "price",              precision: 8, scale: 2
    t.string   "currency"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.decimal  "discounted_price",   precision: 8, scale: 2
  end

  add_index "parcel_valuations", ["lgc_contract_num", "lgc_product"], name: "index_parcel_valuations_on_lgc_contract_num_and_lgc_product", using: :btree

  create_table "parcels", force: :cascade do |t|
    t.string   "parcel_num"
    t.string   "ishpmt_num"
    t.decimal  "weight",              precision: 8, scale: 2
    t.decimal  "length",              precision: 8, scale: 2
    t.decimal  "width",               precision: 8, scale: 2
    t.decimal  "height",              precision: 8, scale: 2
    t.string   "sender"
    t.string   "sndr_origin_cntry"
    t.string   "recipient"
    t.string   "rcpt_term_cntry"
    t.string   "lgc_product"
    t.string   "lgc_contract_num"
    t.decimal  "price",               precision: 8, scale: 2
    t.string   "currency"
    t.string   "status",                                      default: "initialized"
    t.string   "parent_parcel_num"
    t.string   "child_parcel_num",                                                    array: true
    t.string   "created_by"
    t.integer  "parcel_owner"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "shpmt_product"
    t.string   "notified_files",                                                      array: true
    t.string   "tp_serial_number"
    t.string   "block_reason"
    t.string   "self_return_no"
    t.integer  "returning_parcel_id"
    t.string   "marketing_channel"
    t.string   "opr_status"
    t.string   "refund_way"
    t.string   "refund_status"
    t.datetime "cancel_date"
    t.string   "order_source"
    t.string   "fba_depot_code"
    t.string   "awb_no"
    t.string   "xeett_code"
    t.string   "refund_account"
    t.boolean  "refund_fee_waiver"
    t.string   "track_no"
    t.decimal  "volume_weight",       precision: 8, scale: 2
    t.string   "logistics_product"
    t.string   "logistics_route"
    t.string   "import_num"
    t.decimal  "tax",                 precision: 8, scale: 2
    t.datetime "cancelled_at"
  end

  add_index "parcels", ["awb_no"], name: "index_parcels_on_awb_no", using: :btree
  add_index "parcels", ["created_at"], name: "index_parcels_on_created_at", using: :btree
  add_index "parcels", ["ishpmt_num"], name: "index_parcels_on_ishpmt_num", using: :btree
  add_index "parcels", ["marketing_channel"], name: "index_parcels_on_marketing_channel", using: :btree
  add_index "parcels", ["parcel_num"], name: "index_parcels_on_parcel_num", using: :btree
  add_index "parcels", ["parcel_owner", "tp_serial_number"], name: "index_parcels_on_parcel_owner_and_tp_serial_number", using: :btree
  add_index "parcels", ["status"], name: "index_parcels_on_status", using: :btree
  add_index "parcels", ["track_no"], name: "index_parcels_on_track_no", using: :btree

  create_table "parcels_with_payments", force: :cascade do |t|
    t.string   "parcel_related_num"
    t.string   "pmnt_type"
    t.integer  "parcel_paymnets_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "parcels_with_payments", ["parcel_paymnets_id"], name: "index_parcels_with_payments_on_parcel_paymnets_id", using: :btree
  add_index "parcels_with_payments", ["parcel_related_num"], name: "index_parcels_with_payments_on_parcel_related_num", using: :btree

  create_table "pending_fba_parcels", force: :cascade do |t|
    t.string   "amazon_id"
    t.json     "referred_apps_and_pcls", default: []
    t.json     "scanned_amazon_id",      default: []
    t.integer  "scanned_num",            default: 0
    t.integer  "pending_sum",            default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.json     "scanned_parcel_num",     default: []
    t.datetime "last_scanned_at"
  end

  add_index "pending_fba_parcels", ["amazon_id"], name: "index_pending_fba_parcels_on_amazon_id", using: :btree

  create_table "print_log_with_lots", force: :cascade do |t|
    t.string   "lot_no"
    t.string   "status"
    t.string   "print_type"
    t.string   "parcel_num"
    t.string   "recipient_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "print_log_with_lots", ["lot_no"], name: "index_print_log_with_lots_on_lot_no", using: :btree
  add_index "print_log_with_lots", ["parcel_num"], name: "index_print_log_with_lots_on_parcel_num", using: :btree

  create_table "print_logs", force: :cascade do |t|
    t.string   "status"
    t.datetime "started_at"
    t.datetime "stopped_at"
    t.integer  "start_operator_id"
    t.integer  "stop_operator_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.jsonb    "parcel_nums",       default: {}
  end

  create_table "problem_parcels", force: :cascade do |t|
    t.string   "status"
    t.string   "type"
    t.string   "parcel_num"
    t.string   "shipment_number"
    t.string   "additional_number"
    t.string   "bill_number"
    t.text     "description"
    t.text     "solution"
    t.string   "parcel_num_file"
    t.string   "shipment_number_file"
    t.string   "additional_number_file"
    t.string   "bill_number_file"
    t.integer  "operator_id"
    t.string   "operator"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.datetime "operated_at"
    t.string   "error_type"
  end

  create_table "product_categories", force: :cascade do |t|
    t.string   "name_first"
    t.string   "english_name_first"
    t.string   "name_second"
    t.string   "english_name_second"
    t.string   "name_third"
    t.string   "english_name_third"
    t.string   "hscode"
    t.decimal  "tax_rate",            precision: 8, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_categories", ["english_name_first", "hscode"], name: "index_product_categories_on_english_name_first_and_hscode", using: :btree

  create_table "product_catelogs", force: :cascade do |t|
    t.string   "name"
    t.string   "english_name"
    t.string   "hscode"
    t.decimal  "tax_rate",                precision: 8, scale: 2
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "thumbnails_file_name"
    t.string   "thumbnails_content_type"
    t.integer  "thumbnails_file_size"
    t.datetime "thumbnails_updated_at"
  end

  add_index "product_catelogs", ["name", "english_name"], name: "index_product_catelogs_on_name_and_english_name", using: :btree
  add_index "product_catelogs", ["parent_id"], name: "index_product_catelogs_on_parent_id", using: :btree

  create_table "qy_id_matches", force: :cascade do |t|
    t.string  "old_id"
    t.string  "old_table"
    t.integer "new_id"
    t.string  "new_table"
  end

  add_index "qy_id_matches", ["new_id", "new_table"], name: "index_qy_id_matches_on_new_id_and_new_table", using: :btree
  add_index "qy_id_matches", ["old_id", "old_table"], name: "index_qy_id_matches_on_old_id_and_old_table", using: :btree

  create_table "register_lists", force: :cascade do |t|
    t.string   "sys_commodity_no"
    t.string   "ciq_no"
    t.string   "company_register_no"
    t.string   "inspection_register_no"
    t.string   "english_name"
    t.decimal  "net_weight",              precision: 10, scale: 5
    t.string   "chinese_name"
    t.string   "commodity_no"
    t.string   "goods_name"
    t.string   "hs_code"
    t.string   "measuring_unit"
    t.string   "specification"
    t.string   "declare_unit"
    t.jsonb    "declare_rmb_price"
    t.jsonb    "declare_eur_price"
    t.jsonb    "tax_rmb_price"
    t.jsonb    "tax_eur_price"
    t.string   "original_country"
    t.string   "ingredients"
    t.string   "effect"
    t.string   "brand"
    t.string   "barcode"
    t.string   "inspection_organization"
    t.string   "business_place"
    t.string   "audit_time"
    t.string   "audit_status"
    t.boolean  "green_flag",                                       default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "returning_parcels", force: :cascade do |t|
    t.string   "returning_parcel_num"
    t.string   "lgc_product"
    t.string   "lgc_contract_num"
    t.jsonb    "shpmt_address_info",                           default: {},            null: false
    t.decimal  "measuring_price",      precision: 8, scale: 2
    t.string   "currency"
    t.decimal  "act_price",            precision: 8, scale: 2
    t.text     "memo"
    t.string   "status",                                       default: "initialized"
    t.string   "shpmt_status",                                 default: "initialized"
    t.string   "pmnt_status",                                  default: "unpaid"
    t.string   "created_by"
    t.integer  "parcel_owner"
    t.string   "marketing_channel"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "retour_num"
    t.datetime "paid_at"
  end

  add_index "returning_parcels", ["marketing_channel"], name: "index_returning_parcels_on_marketing_channel", using: :btree
  add_index "returning_parcels", ["pmnt_status"], name: "index_returning_parcels_on_pmnt_status", using: :btree
  add_index "returning_parcels", ["returning_parcel_num"], name: "index_returning_parcels_on_returning_parcel_num", using: :btree
  add_index "returning_parcels", ["status"], name: "index_returning_parcels_on_status", using: :btree

  create_table "reward_records", force: :cascade do |t|
    t.string   "syear"
    t.string   "sdate"
    t.string   "status"
    t.jsonb    "result"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rl_carts", force: :cascade do |t|
    t.integer  "owner"
    t.text     "carts",      array: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sto_waybills", force: :cascade do |t|
    t.integer "seq"
    t.string  "waybill_no"
    t.string  "status"
  end

  add_index "sto_waybills", ["seq"], name: "index_sto_waybills_on_seq", using: :btree

  create_table "t1_parcel_operation_logs", force: :cascade do |t|
    t.string   "bill_number"
    t.integer  "operator_id"
    t.string   "operator"
    t.string   "question_code"
    t.string   "question_desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transport_depots", force: :cascade do |t|
    t.string "depot_name"
    t.string "email"
    t.string "status"
  end

  create_table "user_confs", force: :cascade do |t|
    t.integer  "user_id",                     null: false
    t.string   "conf_type",                   null: false
    t.string   "conf_subtype", default: "00"
    t.string   "conf_value",                  null: false
    t.string   "remark"
    t.boolean  "is_use",       default: true
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "user_confs", ["user_id", "conf_type"], name: "index_user_confs_on_user_id_and_conf_type", using: :btree

  create_table "user_notifications", force: :cascade do |t|
    t.integer  "owner"
    t.string   "notif_type"
    t.string   "status",      default: "unread"
    t.string   "related_num"
    t.string   "parcel_type"
    t.string   "theme"
    t.jsonb    "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                                           default: "",    null: false
    t.string   "encrypted_password",                              default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                                   default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "user_type"
    t.string   "customer_num"
    t.string   "nickname"
    t.datetime "created_at",                                                      null: false
    t.datetime "updated_at",                                                      null: false
    t.string   "api_key"
    t.string   "marketing_channel"
    t.string   "data_mgmt_right",                                                              array: true
    t.string   "corp_name"
    t.string   "corp_address"
    t.string   "corp_phone"
    t.string   "authentication_token"
    t.string   "sex"
    t.string   "country"
    t.string   "city"
    t.string   "postcode"
    t.string   "address"
    t.string   "telephone"
    t.string   "qq_num"
    t.decimal  "credit",                 precision: 12, scale: 2
    t.string   "role"
    t.decimal  "e_cash",                 precision: 12, scale: 2
    t.boolean  "need_retour",                                     default: false
    t.string   "wechat_id"
    t.datetime "wechat_binding_time"
    t.integer  "created_by"
    t.decimal  "deposit",                precision: 12, scale: 2
    t.jsonb    "freight_ratio",                                   default: {}
    t.string   "currency_pay"
    t.string   "abbr_code"
    t.integer  "parent_user_id"
    t.string   "weixin_num"
    t.jsonb    "discount",                                        default: {}
    t.integer  "parcel_amount",                                   default: 0
  end

  add_index "users", ["authentication_token"], name: "index_users_on_authentication_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vat_files", force: :cascade do |t|
    t.string   "vat_file"
    t.string   "status",                default: "created"
    t.integer  "file_owner"
    t.string   "company"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "recipient"
    t.string   "vf_type"
    t.string   "company_name"
    t.string   "company_address"
    t.string   "country"
    t.string   "telephone"
    t.string   "email"
    t.string   "vat_num"
    t.string   "eori_num"
    t.string   "deferment_account_num"
  end

  create_table "waybill_cz_posts", force: :cascade do |t|
    t.string   "waybill_no",                 null: false
    t.string   "original_no",                null: false
    t.string   "status",                     null: false
    t.string   "remark"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "groups",      default: "99"
  end

  add_index "waybill_cz_posts", ["status", "waybill_no"], name: "index_waybill_cz_posts_on_status_and_waybill_no", using: :btree

  create_table "weixin_access_tokens", force: :cascade do |t|
    t.string   "access_token"
    t.integer  "expire_in"
    t.boolean  "valid_tag",    default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weixin_parcel_tracking_infos", force: :cascade do |t|
    t.string   "parcel_num"
    t.string   "ishpmt_num"
    t.string   "pd_pmnt_status"
    t.string   "recipient"
    t.integer  "pti_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tracking_info"
    t.string   "push_tag",        default: "unpushed"
    t.integer  "push_num",        default: 0
    t.datetime "pti_create_time"
  end

  create_table "weixin_share_logs", force: :cascade do |t|
    t.string   "openid"
    t.integer  "wui_owner"
    t.string   "theme"
    t.string   "status"
    t.string   "log"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "server_type"
  end

  create_table "weixin_user_infos", force: :cascade do |t|
    t.string   "wechat_id"
    t.string   "server_type"
    t.string   "email"
    t.string   "password"
    t.datetime "wechat_binding_time"
    t.integer  "user_id"
    t.jsonb    "parcel_nums",         default: []
    t.integer  "time",                default: 0
    t.string   "set_label",           default: "unset"
    t.integer  "share_num",           default: 0
    t.string   "user_nickname"
    t.string   "user_rank"
    t.decimal  "user_credit"
  end

  create_table "wms_commodities", force: :cascade do |t|
    t.string   "commodity_num"
    t.string   "name"
    t.string   "chinese_name"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wms_commodities", ["commodity_num"], name: "index_wms_commodities_on_commodity_num", using: :btree

  create_table "wms_existed_skus", force: :cascade do |t|
    t.string   "sku_num"
    t.string   "barcode"
    t.string   "inbound_batch_num"
    t.string   "sku_main_owner_id"
    t.string   "sku_owner"
    t.string   "shelf_num"
    t.integer  "quantity"
    t.datetime "production_date"
    t.datetime "deadline_of_shelf_life"
    t.integer  "operator_id"
    t.string   "operator"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state"
    t.string   "problem_memo"
    t.string   "depot_name"
    t.integer  "availiable_quantity"
  end

  add_index "wms_existed_skus", ["barcode"], name: "index_wms_existed_skus_on_barcode", using: :btree
  add_index "wms_existed_skus", ["shelf_num", "depot_name"], name: "index_wms_existed_skus_on_shelf_num_and_depot_name", using: :btree
  add_index "wms_existed_skus", ["sku_main_owner_id"], name: "index_wms_existed_skus_on_sku_main_owner_id", using: :btree
  add_index "wms_existed_skus", ["sku_num"], name: "index_wms_existed_skus_on_sku_num", using: :btree

  create_table "wms_inbound_notifications", force: :cascade do |t|
    t.string   "tp_serial_id"
    t.string   "inbound_num"
    t.datetime "scheduled_time"
    t.jsonb    "scheduled_inbound_sku_info"
    t.text     "extra_message"
    t.string   "status"
    t.string   "inbound_depot"
    t.string   "inbound_sku_main_owner_id"
    t.string   "inbound_sku_owner"
    t.string   "return_carrier"
    t.string   "consignor"
    t.text     "memo"
    t.integer  "operator_id"
    t.string   "operator"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "storage_status"
    t.string   "cancel_order_ids"
  end

  add_index "wms_inbound_notifications", ["inbound_num"], name: "index_wms_inbound_notifications_on_inbound_num", using: :btree
  add_index "wms_inbound_notifications", ["inbound_sku_main_owner_id", "status"], name: "index_wms_inbound_notifications_on_owner_id_and_status", using: :btree

  create_table "wms_inbound_skus", force: :cascade do |t|
    t.string   "inbund_batch_num"
    t.string   "inbound_num"
    t.datetime "inbound_batch_time"
    t.jsonb    "inbound_sku_info"
    t.string   "inbound_sku_main_owner_id"
    t.string   "inbound_sku_owner"
    t.string   "return_carrier"
    t.string   "consignor"
    t.text     "memo"
    t.string   "status"
    t.string   "operators",                 array: true
    t.integer  "operator_ids",              array: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wms_inbound_skus", ["inbound_num"], name: "index_wms_inbound_skus_on_inbound_num", using: :btree
  add_index "wms_inbound_skus", ["inbund_batch_num"], name: "index_wms_inbound_skus_on_inbund_batch_num", using: :btree
  add_index "wms_inbound_skus", ["status"], name: "index_wms_inbound_skus_on_status", using: :btree

  create_table "wms_inventories", force: :cascade do |t|
    t.string   "sku_num"
    t.string   "barcode"
    t.string   "sku_main_owner_id"
    t.string   "sku_owner"
    t.string   "commodity_num"
    t.integer  "quantity"
    t.integer  "availiable_quantity"
    t.integer  "caution_value"
    t.string   "depot_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sku_status"
  end

  add_index "wms_inventories", ["barcode"], name: "index_wms_inventories_on_barcode", using: :btree
  add_index "wms_inventories", ["sku_main_owner_id"], name: "index_wms_inventories_on_sku_main_owner_id", using: :btree
  add_index "wms_inventories", ["sku_num"], name: "index_wms_inventories_on_sku_num", using: :btree

  create_table "wms_notifications", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.string   "status"
    t.string   "kind"
    t.string   "user_id"
    t.text     "extra_message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wms_operation_outbound_orders", force: :cascade do |t|
    t.string   "outbound_num"
    t.string   "order_num"
    t.jsonb    "order_info"
    t.string   "order_depot"
    t.string   "order_owner_id"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wms_outbound_notifications", force: :cascade do |t|
    t.string   "tp_serial_id"
    t.string   "outbound_num"
    t.datetime "scheduled_time"
    t.jsonb    "scheduled_outbound_order_info"
    t.text     "extra_message"
    t.string   "status"
    t.string   "outbound_depot"
    t.string   "outbound_sku_main_owner_id"
    t.string   "outbound_sku_owner"
    t.text     "memo"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "operator"
    t.integer  "operator_id"
  end

  add_index "wms_outbound_notifications", ["outbound_num"], name: "index_wms_outbound_notifications_on_outbound_num", using: :btree
  add_index "wms_outbound_notifications", ["outbound_sku_main_owner_id", "status"], name: "index_wms_outbound_notifications_on_owner_id_and_status", using: :btree

  create_table "wms_outbound_order_existed_sku_allocates", force: :cascade do |t|
    t.string   "outbound_num"
    t.string   "order_num"
    t.string   "sku_num"
    t.string   "barcode"
    t.string   "shelf_num"
    t.integer  "shelf_quantity"
    t.integer  "existed_sku_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wms_outbound_order_existed_sku_allocates", ["outbound_num", "order_num"], name: "index_1", using: :btree

  create_table "wms_outbound_skus", force: :cascade do |t|
    t.string   "outbound_batch_num"
    t.string   "outbound_num"
    t.string   "order_num"
    t.datetime "outbound_batch_time"
    t.jsonb    "referred_skus"
    t.jsonb    "shpmt_address_info"
    t.string   "status"
    t.text     "memo"
    t.integer  "operator_id"
    t.string   "operator"
    t.string   "outbound_sku_main_owner_id"
    t.string   "outbound_sku_owner"
    t.string   "outbound_method"
    t.string   "wave_num"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "allocator"
    t.integer  "allocator_id"
    t.string   "blocked"
    t.datetime "cancel_at"
    t.string   "shipment_num"
    t.integer  "depot_id"
    t.integer  "checker_id"
    t.string   "checker"
    t.boolean  "is_allocated"
    t.jsonb    "parcel_nums",                default: []
    t.jsonb    "packing_logs",               default: []
    t.string   "fba_depot_code"
    t.integer  "conts"
  end

  add_index "wms_outbound_skus", ["outbound_batch_num"], name: "index_wms_outbound_skus_on_outbound_batch_num", using: :btree
  add_index "wms_outbound_skus", ["outbound_num"], name: "index_wms_outbound_skus_on_outbound_num", using: :btree
  add_index "wms_outbound_skus", ["status"], name: "index_wms_outbound_skus_on_status", using: :btree

  create_table "wms_returned_parcels", force: :cascade do |t|
    t.integer  "operator_id"
    t.string   "parcel_num"
    t.string   "order_num"
    t.string   "shelf_num"
    t.string   "depot_id"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wms_scanning_logs", force: :cascade do |t|
    t.string   "parcel_num"
    t.string   "operation"
    t.string   "remark"
    t.integer  "operator_id"
    t.string   "operator"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "result"
  end

  create_table "wms_shelf_infos", force: :cascade do |t|
    t.integer  "depot_id"
    t.string   "area_code"
    t.integer  "seq_num"
    t.string   "status"
    t.jsonb    "existed_sku_ids", default: []
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "shelf_num"
  end

  add_index "wms_shelf_infos", ["area_code"], name: "index_wms_shelf_infos_on_area_code", using: :btree
  add_index "wms_shelf_infos", ["depot_id"], name: "index_wms_shelf_infos_on_depot_id", using: :btree
  add_index "wms_shelf_infos", ["seq_num"], name: "index_wms_shelf_infos_on_seq_num", using: :btree

  create_table "wms_sku_categories", force: :cascade do |t|
    t.string   "category_num"
    t.string   "category_name"
    t.text     "descripiton"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wms_sku_operation_logs", force: :cascade do |t|
    t.string   "sku_num"
    t.string   "barcode"
    t.string   "referred_batch_num"
    t.integer  "quantity"
    t.string   "shelf_num"
    t.string   "operation"
    t.integer  "operator_id"
    t.string   "operator"
    t.string   "is_kicked_in",       default: "false"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wms_sku_operation_logs", ["barcode"], name: "index_wms_sku_operation_logs_on_barcode", using: :btree
  add_index "wms_sku_operation_logs", ["operation", "is_kicked_in"], name: "index_wms_sku_operation_logs_on_operation_and_is_kicked_in", using: :btree
  add_index "wms_sku_operation_logs", ["sku_num"], name: "index_wms_sku_operation_logs_on_sku_num", using: :btree

  create_table "wms_sku_owners", force: :cascade do |t|
    t.string   "sku_owner"
    t.integer  "main_owner_id"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wms_skus", force: :cascade do |t|
    t.string   "sku_num",                                     null: false
    t.string   "commodity_num"
    t.string   "barcode"
    t.integer  "category_id"
    t.string   "abc_category"
    t.string   "name"
    t.string   "chinese_name"
    t.string   "brand"
    t.string   "model"
    t.string   "color"
    t.string   "size"
    t.string   "grade"
    t.string   "package"
    t.string   "bale_capacity"
    t.decimal  "net_weight_per_unit", precision: 9, scale: 3
    t.text     "descripiton"
    t.decimal  "unit_price",          precision: 8, scale: 2
    t.string   "currency"
    t.decimal  "total_weight",        precision: 9, scale: 3
    t.string   "coo"
    t.string   "usage_purpose"
    t.integer  "shelf_life"
    t.string   "sku_owner"
    t.string   "sku_main_owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "commodity_category"
    t.string   "shelf_life_unit"
    t.string   "status"
  end

  add_index "wms_skus", ["barcode"], name: "index_wms_skus_on_barcode", using: :btree
  add_index "wms_skus", ["sku_num"], name: "index_wms_skus_on_sku_num", using: :btree

  create_table "wms_stock_takings", force: :cascade do |t|
    t.string   "stock_taking_num"
    t.jsonb    "refered_shelfs_info"
    t.string   "allocator"
    t.integer  "allocator_id"
    t.integer  "operator_id"
    t.string   "operator"
    t.string   "status"
    t.string   "depot_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "cancel_at"
  end

  add_index "wms_stock_takings", ["operator_id"], name: "index_wms_stock_takings_on_operator_id", using: :btree
  add_index "wms_stock_takings", ["status"], name: "index_wms_stock_takings_on_status", using: :btree
  add_index "wms_stock_takings", ["stock_taking_num"], name: "index_wms_stock_takings_on_stock_taking_num", using: :btree

  create_table "wms_terminal_logs", force: :cascade do |t|
    t.integer  "owner"
    t.string   "oper_num"
    t.jsonb    "oper_log"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status",     default: "normal"
  end

  create_table "wms_unpacking_logs", force: :cascade do |t|
    t.string   "retour_num"
    t.jsonb    "parcels_info",      default: {}, null: false
    t.text     "remark"
    t.string   "overweight_status"
    t.integer  "operator_id"
    t.string   "operator"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wms_unpacking_logs", ["retour_num"], name: "index_wms_unpacking_logs_on_retour_num", using: :btree

  create_table "wms_waves", force: :cascade do |t|
    t.string   "wave_num"
    t.string   "allocator"
    t.integer  "allocator_id"
    t.jsonb    "outbound_sku_info"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.jsonb    "sku_info"
    t.string   "operators",         array: true
    t.integer  "operator_ids",      array: true
    t.boolean  "is_allocated"
  end

  add_index "wms_waves", ["wave_num", "status"], name: "index_wms_waves_on_wave_num_and_status", using: :btree

  create_table "worksheets", force: :cascade do |t|
    t.string   "work_num"
    t.string   "title"
    t.string   "description"
    t.string   "state"
    t.integer  "created_by"
    t.integer  "processed_by"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "work_img1_file_name"
    t.string   "work_img1_content_type"
    t.integer  "work_img1_file_size"
    t.datetime "work_img1_updated_at"
    t.string   "work_img2_file_name"
    t.string   "work_img2_content_type"
    t.integer  "work_img2_file_size"
    t.datetime "work_img2_updated_at"
    t.string   "work_img3_file_name"
    t.string   "work_img3_content_type"
    t.integer  "work_img3_file_size"
    t.datetime "work_img3_updated_at"
    t.string   "marketing_channel"
    t.string   "memo"
  end

  add_index "worksheets", ["work_num"], name: "index_worksheets_on_work_num", unique: true, using: :btree

end
