class Topic < ActiveRecord::Base
  attr_accessible :topic, :description
  has_many :nodes
  has_many :links
end
