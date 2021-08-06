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

ActiveRecord::Schema.define(version: 2019_01_16_172951) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "line1"
    t.string "line2"
    t.string "zip_code"
    t.bigint "city_id"
    t.string "addressable_type"
    t.bigint "addressable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable_type_and_addressable_id"
    t.index ["city_id"], name: "index_addresses_on_city_id"
  end

  create_table "adoptions", force: :cascade do |t|
    t.date "adoption_date"
    t.bigint "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "adopter_id"
    t.index ["adopter_id"], name: "index_adoptions_on_adopter_id"
    t.index ["users_id"], name: "index_adoptions_on_users_id"
  end

  create_table "ads", force: :cascade do |t|
    t.string "title", default: "", null: false
    t.string "descripcion", default: "", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_ads_on_user_id"
  end

  create_table "asks", force: :cascade do |t|
    t.text "campo"
    t.text "answer"
    t.string "tipo"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "doctor"
    t.index ["user_id"], name: "index_asks_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.string "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.bigint "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "complaints", force: :cascade do |t|
    t.string "abusive_name"
    t.bigint "institution_id"
    t.text "description"
    t.string "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "approved"
    t.index ["institution_id"], name: "index_complaints_on_institution_id"
  end

  create_table "donations", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "benefited"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "shipping"
    t.string "dontype"
    t.index ["user_id"], name: "index_donations_on_user_id"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.integer "points"
    t.string "comment"
    t.bigint "trainer_id"
    t.bigint "walker_id"
    t.bigint "user_id"
    t.bigint "pension_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "temporal_homes_id"
    t.index ["pension_id"], name: "index_feedbacks_on_pension_id"
    t.index ["temporal_homes_id"], name: "index_feedbacks_on_temporal_homes_id"
    t.index ["trainer_id"], name: "index_feedbacks_on_trainer_id"
    t.index ["user_id"], name: "index_feedbacks_on_user_id"
    t.index ["walker_id"], name: "index_feedbacks_on_walker_id"
  end

  create_table "follow_ups", force: :cascade do |t|
    t.text "description"
    t.bigint "adoption_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["adoption_id"], name: "index_follow_ups_on_adoption_id"
  end

  create_table "histories", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "history_status"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_histories_on_user_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "name"
    t.string "picture"
    t.string "imageable_type"
    t.bigint "imageable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["imageable_type", "imageable_id"], name: "index_images_on_imageable_type_and_imageable_id"
  end

  create_table "institutions", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.string "web"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "journals", force: :cascade do |t|
    t.string "tipe_journal"
    t.string "place_journal"
    t.time "time_journal"
    t.date "date_journal"
    t.string "description_journal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "news", force: :cascade do |t|
    t.string "title"
    t.string "content1"
    t.string "content2"
    t.integer "visits", null: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_news_on_user_id"
  end

  create_table "pensions", force: :cascade do |t|
    t.text "description"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombre"
    t.string "red_social"
    t.string "correo"
    t.bigint "user_id"
    t.float "qualification"
    t.index ["user_id"], name: "index_pensions_on_user_id"
  end

  create_table "permissions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.bigint "adoptions_id"
    t.bigint "races_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "aprox_age"
    t.boolean "dewormed"
    t.boolean "neutered"
    t.string "species"
    t.integer "weight"
    t.boolean "special_needs"
    t.text "description"
    t.index ["adoptions_id"], name: "index_pets_on_adoptions_id"
    t.index ["races_id"], name: "index_pets_on_races_id"
  end

  create_table "phone_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phones", force: :cascade do |t|
    t.string "number"
    t.bigint "phone_type_id"
    t.string "phoneable_type"
    t.bigint "phoneable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["phone_type_id"], name: "index_phones_on_phone_type_id"
    t.index ["phoneable_type", "phoneable_id"], name: "index_phones_on_phoneable_type_and_phoneable_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "name"
    t.string "caption"
    t.string "photo_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "privacies", force: :cascade do |t|
    t.boolean "show_full_name", default: true
    t.boolean "show_email", default: true
    t.boolean "show_profile_picture", default: true
    t.boolean "show_phones", default: true
    t.boolean "show_address", default: true
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_privacies_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "product_type"
    t.bigint "qty"
    t.bigint "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "address"
    t.integer "phone_number"
    t.index ["users_id"], name: "index_products_on_users_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.boolean "male"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "race_details", force: :cascade do |t|
    t.float "height"
    t.float "weight"
    t.string "fur"
    t.string "physical_details"
    t.string "character"
    t.string "care"
    t.string "health"
    t.string "story"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "race_id"
    t.index ["race_id"], name: "index_race_details_on_race_id"
  end

  create_table "race_personalities", force: :cascade do |t|
    t.integer "affectivity"
    t.integer "docility"
    t.integer "bustling"
    t.integer "playful"
    t.integer "grooming"
    t.integer "hair_losener"
    t.integer "kids"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "race_id"
    t.index ["race_id"], name: "index_race_personalities_on_race_id"
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "video_id"
    t.float "height"
    t.float "weight"
    t.string "fur"
    t.string "physical_details"
    t.string "character"
    t.string "care"
    t.string "health"
    t.string "story"
    t.string "color"
    t.integer "affectivity"
    t.integer "docility"
    t.integer "bustling"
    t.integer "playful"
    t.integer "grooming"
    t.integer "hair_loosner"
    t.integer "kids"
    t.string "species"
  end

  create_table "reflections", force: :cascade do |t|
    t.text "description"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_reflections_on_user_id"
  end

  create_table "requests", force: :cascade do |t|
    t.string "tipo"
    t.text "descripcion"
    t.text "direccion"
    t.integer "cuenta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "name"
    t.string "last_name"
    t.string "banco"
    t.string "bool"
    t.string "email"
    t.index ["user_id"], name: "index_requests_on_user_id"
  end

  create_table "role_permissions", force: :cascade do |t|
    t.bigint "role_id"
    t.bigint "permission_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["permission_id"], name: "index_role_permissions_on_permission_id"
    t.index ["role_id"], name: "index_role_permissions_on_role_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_cats", force: :cascade do |t|
    t.integer "subscriber_id"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subscribers", force: :cascade do |t|
    t.string "email"
    t.string "period"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_subscribers_on_email", unique: true
  end

  create_table "subscription_categories", force: :cascade do |t|
    t.bigint "subscription_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_subscription_categories_on_category_id"
    t.index ["subscription_id"], name: "index_subscription_categories_on_subscription_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string "email", null: false
    t.string "period", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_subscriptions_on_email", unique: true
    t.index ["period"], name: "index_subscriptions_on_period"
  end

  create_table "temporal_homes", force: :cascade do |t|
    t.string "id_card"
    t.boolean "dog"
    t.text "pet_characteristics"
    t.string "home_type"
    t.text "existing_pets"
    t.string "kind_of_help"
    t.date "protection_duration"
    t.string "reference_full_name"
    t.string "reference_phone"
    t.string "reference_id_card"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.boolean "approved"
    t.index ["user_id"], name: "index_temporal_homes_on_user_id"
  end

  create_table "tip_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_tipes_on_category_id"
  end

  create_table "tips", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "tip_types_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tip_types_id"], name: "index_tips_on_tip_types_id"
  end

  create_table "trainer_details", force: :cascade do |t|
    t.text "description"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.float "qualification"
    t.index ["user_id"], name: "index_trainer_details_on_user_id"
  end

  create_table "user_roles", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_user_roles_on_role_id"
    t.index ["user_id"], name: "index_user_roles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "authentication_token", limit: 30
    t.index ["authentication_token"], name: "index_users_on_authentication_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["id"], name: "index_users_on_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "walkers", force: :cascade do |t|
    t.bigint "role_id"
    t.string "start_time"
    t.string "end_time"
    t.string "day"
    t.string "city"
    t.datetime "date_of_birth"
    t.float "calification"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "status"
    t.string "description"
    t.index ["user_id"], name: "index_walkers_on_user_id"
  end

  add_foreign_key "addresses", "cities"
  add_foreign_key "adoptions", "users", column: "users_id"
  add_foreign_key "ads", "users"
  add_foreign_key "asks", "users"
  add_foreign_key "cities", "states"
  add_foreign_key "complaints", "institutions"
  add_foreign_key "donations", "users"
  add_foreign_key "feedbacks", "temporal_homes", column: "temporal_homes_id"
  add_foreign_key "follow_ups", "adoptions"
  add_foreign_key "histories", "users"
  add_foreign_key "news", "users"
  add_foreign_key "pensions", "users"
  add_foreign_key "pets", "adoptions", column: "adoptions_id"
  add_foreign_key "pets", "races", column: "races_id"
  add_foreign_key "phones", "phone_types"
  add_foreign_key "privacies", "users"
  add_foreign_key "products", "users", column: "users_id"
  add_foreign_key "profiles", "users"
  add_foreign_key "reflections", "users"
  add_foreign_key "requests", "users"
  add_foreign_key "role_permissions", "permissions"
  add_foreign_key "role_permissions", "roles"
  add_foreign_key "subscription_categories", "categories"
  add_foreign_key "subscription_categories", "subscriptions"
  add_foreign_key "temporal_homes", "users"
  add_foreign_key "tipes", "categories"
  add_foreign_key "tips", "tip_types", column: "tip_types_id"
  add_foreign_key "trainer_details", "users"
  add_foreign_key "user_roles", "roles"
  add_foreign_key "user_roles", "users"
  add_foreign_key "walkers", "users"
end
