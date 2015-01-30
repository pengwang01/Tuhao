class SurveyQuestions < ActiveRecord::Migration
  def change
  	  create_table :SurveyQuestions do |t|
      t.integer :QuestionId
      t.string :QuestionText
      t.string :Answer1
      t.string :Answer2
      t.string :Answer3
      t.string :Answer4
    end
  end
end
