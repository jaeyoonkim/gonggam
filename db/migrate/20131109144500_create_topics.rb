class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.text :topic

      t.timestamps
    end
  end
end
