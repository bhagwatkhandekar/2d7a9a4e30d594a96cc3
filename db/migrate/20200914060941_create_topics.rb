class CreateTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :topics do |t|
    	t.integer :topic_number
    	t.string :topic_name

      t.timestamps
    end
  end
end
