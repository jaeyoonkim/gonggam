class Node < ActiveRecord::Base
  attr_accessible :artist, :link, :parent, :root, :title, :content
end
