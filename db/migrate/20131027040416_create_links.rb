class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :start_id
      t.integer :end_id

      t.timestamps
    end
  end
end
