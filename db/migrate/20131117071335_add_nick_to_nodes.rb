class AddNickToNodes < ActiveRecord::Migration
  def change
  	add_column :nodes, :user_nick, :string
  end
end
