class Topic < ActiveRecord::Base
  attr_accessible :topic
  has_many :nodes
  has_many :links
end
