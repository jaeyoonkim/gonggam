class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.integer :root
      t.integer :parent
      t.string :title
      t.string :artist
      t.string :link
      t.string :content

      t.timestamps
    end
  end
end
