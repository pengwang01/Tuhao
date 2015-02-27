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

ActiveRecord::Schema.define(version: 20150215053734) do

  create_table "SurveyQuestions", force: true do |t|
    t.integer "QuestionId"
    t.string  "QuestionText"
    t.string  "Answer1"
    t.string  "Answer2"
    t.string  "Answer3"
    t.string  "Answer4"
  end

  create_table "SurveyResults", force: true do |t|
    t.integer "ResultId"
    t.integer "SurveyId"
    t.integer "UserAnswer1"
    t.integer "UserAnswer2"
    t.integer "UserAnswer3"
    t.integer "UserAnswer4"
    t.integer "UserAnswer5"
    t.integer "UserAnswer6"
    t.integer "UserAnswer7"
    t.integer "UserAnswer8"
    t.integer "UserAnswer9"
    t.integer "UserAnswer10"
    t.string  "UserComment"
  end

  create_table "Surveys", force: true do |t|
    t.integer "SurveyId"
    t.integer "QuestionId1"
    t.integer "QuestionId2"
    t.integer "QuestionId3"
    t.integer "QuestionId4"
    t.integer "QuestionId5"
    t.integer "QuestionId6"
    t.integer "QuestionId7"
    t.integer "QuestionId8"
    t.integer "QuestionId9"
    t.integer "QuestionId10"
  end

  create_table "books", force: true do |t|
    t.string   "name"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cash_accts", force: true do |t|
    t.decimal  "totalBalance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contracts", force: true do |t|
    t.datetime "shipperApproveDate"
    t.datetime "senderApproveDate"
    t.string   "receiver"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "zipCode"
    t.string   "sender"
    t.string   "shipper"
    t.string   "deposit"
    t.integer  "statusType"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "deposits", force: true do |t|
    t.datetime "depositDate"
    t.integer  "statusType"
    t.decimal  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "itemName"
    t.decimal  "length"
    t.decimal  "width"
    t.decimal  "weight"
    t.decimal  "height"
    t.string   "description"
    t.string   "specialInstruction"
    t.decimal  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "SendFrom"
    t.string   "SendTo"
    t.string   "Description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.integer "person_id"
    t.integer "shipper_id"
    t.integer "sender_id"
  end

  add_index "roles", ["person_id"], name: "index_roles_on_person_id"
  add_index "roles", ["sender_id"], name: "index_roles_on_sender_id"
  add_index "roles", ["shipper_id"], name: "index_roles_on_shipper_id"

  create_table "senders", force: true do |t|
    t.string   "cashAcct"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shippers", force: true do |t|
    t.string   "DriverLicense"
    t.string   "CarLicense"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cashAcct"
  end

  create_table "statuses", force: true do |t|
    t.integer  "statusType"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transactions", force: true do |t|
    t.integer  "cashAcct"
    t.integer  "deposit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "password"
    t.string   "firstName"
    t.string   "lastName"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
