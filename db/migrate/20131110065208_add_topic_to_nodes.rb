class AddTopicToNodes < ActiveRecord::Migration
  def change
  	add_column :nodes, :topic_id, :integer
  end
end
