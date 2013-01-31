class Connection < ActiveRecord::Base

	has_and_belongs_to_many :users
  has_many :messages

  def last_message
    messages.last
  end

  def last_message_sender
    last_message.try(:sender)
  end
end