class Link < ActiveRecord::Base
  attr_accessible :end_id, :start_id, :topic_id
  belongs_to :topic
end
