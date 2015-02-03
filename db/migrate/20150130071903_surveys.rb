class Surveys < ActiveRecord::Migration
  def change
  	  create_table :Surveys do |t|
      t.integer :SurveyId
      t.integer :QuestionId1
      t.integer :QuestionId2
      t.integer :QuestionId3
      t.integer :QuestionId4
      t.integer :QuestionId5
      t.integer :QuestionId6
      t.integer :QuestionId7
      t.integer :QuestionId8
      t.integer :QuestionId9
      t.integer :QuestionId10
    end
  end
end
