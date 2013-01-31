class Message < ActiveRecord::Base
  attr_accessible :sender_id, :text

  belongs_to :sender, :class_name => 'User', :foreign_key => :sender_id
  belongs_to :connection
end
