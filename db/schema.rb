# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2025_05_06_121918) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.bigint "category_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_articles_on_category_id"
    t.index ["product_id"], name: "index_articles_on_product_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "seo_url"
    t.string "seo_title"
    t.text "short_description"
    t.text "description"
    t.integer "parent_id"
    t.string "kind"
    t.string "status"
    t.boolean "featured"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "location"
    t.integer "price_range"
    t.string "website_url"
    t.string "contact_email"
    t.string "contact_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "state"
    t.string "city", default: "Não especificado"
    t.boolean "starred", default: false, null: false
    t.string "status"
    t.string "seo_url"
    t.index ["seo_url"], name: "index_companies_on_seo_url", unique: true
  end

  create_table "company_banners", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.string "image"
    t.string "caption"
    t.string "link_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_banners_on_company_id"
  end

  create_table "company_categories", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_company_categories_on_category_id"
    t.index ["company_id"], name: "index_company_categories_on_company_id"
  end

  create_table "company_images", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.string "image_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_images_on_company_id"
  end

  create_table "impressions", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.string "impression_type"
    t.datetime "date"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_impressions_on_company_id"
  end

  create_table "lead_saas", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "company_name"
    t.string "source"
    t.string "stage"
    t.datetime "captured_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leads", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.string "lead_type"
    t.string "client_name"
    t.string "client_email"
    t.string "client_phone"
    t.date "date"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status"
    t.integer "porte_empresa"
    t.index ["company_id"], name: "index_leads_on_company_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "role"
    t.bigint "company_id", null: false
    t.string "status"
    t.datetime "joined_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_members_on_company_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "price"
    t.string "billing_cycle"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "currency"
    t.integer "billing_type"
    t.integer "payment_method"
    t.string "status"
    t.string "billing_frequency"
    t.bigint "product_id", null: false
    t.string "plan_category"
    t.index ["product_id"], name: "index_plans_on_product_id"
  end

  create_table "product_accesses", force: :cascade do |t|
    t.bigint "member_id", null: false
    t.string "product_name"
    t.string "access_level"
    t.datetime "granted_at"
    t.datetime "revoked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.index ["member_id"], name: "index_product_accesses_on_member_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.string "state"
    t.string "city"
    t.string "website"
    t.text "featured_project"
    t.string "contact_name"
    t.string "contact_email"
    t.string "contact_phone"
    t.json "services"
    t.json "advantages"
    t.json "testimonials"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.text "content"
    t.integer "rating"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status"
    t.index ["company_id"], name: "index_reviews_on_company_id"
  end

  create_table "selos", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "position"
    t.integer "year"
    t.string "edition"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.string "name"
    t.text "description"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_services_on_company_id"
  end

  create_table "sponsored_products", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.string "product_name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.decimal "price_paid"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_sponsored_products_on_company_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "primary_phone"
    t.string "secondary_phone"
    t.string "company_name"
    t.boolean "admin"
    t.boolean "email_confirmed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "articles", "categories"
  add_foreign_key "articles", "products"
  add_foreign_key "company_banners", "companies"
  add_foreign_key "company_categories", "categories"
  add_foreign_key "company_categories", "companies"
  add_foreign_key "company_images", "companies"
  add_foreign_key "impressions", "companies"
  add_foreign_key "leads", "companies"
  add_foreign_key "members", "companies"
  add_foreign_key "plans", "products"
  add_foreign_key "product_accesses", "members"
  add_foreign_key "reviews", "companies"
  add_foreign_key "services", "companies"
  add_foreign_key "sponsored_products", "companies"
end
