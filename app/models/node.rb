class Node < ActiveRecord::Base
  attr_accessible :artist, :link, :parent, :root, :title, :content, :topic_id
  belongs_to :topic
end
