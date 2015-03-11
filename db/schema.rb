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

ActiveRecord::Schema.define(version: 20150311053815) do

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

  create_table "pets", force: true do |t|
    t.string   "name"
    t.date     "birthday"
    t.integer  "gender"
    t.integer  "category"
    t.string   "breed"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "pets", ["user_id"], name: "index_pets_on_user_id"

  create_table "users", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
