class SurveyResults < ActiveRecord::Migration
  def change
  	  create_table :SurveyResults do |t|
      t.integer :ResultId
      t.integer :SurveyId
      t.integer :UserAnswer1
      t.integer :UserAnswer2
      t.integer :UserAnswer3
      t.integer :UserAnswer4
      t.integer :UserAnswer5
      t.integer :UserAnswer6
      t.integer :UserAnswer7
      t.integer :UserAnswer8
      t.integer :UserAnswer9
      t.integer :UserAnswer10
      t.string :UserComment
    end
  end
end
