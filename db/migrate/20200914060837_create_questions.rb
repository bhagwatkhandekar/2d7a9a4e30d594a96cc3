class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
    	t.string :question_name
    	t.string :que_priority

      t.timestamps
    end
  end
end
