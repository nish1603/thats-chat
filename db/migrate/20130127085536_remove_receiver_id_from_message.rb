class RemoveReceiverIdFromMessage < ActiveRecord::Migration
  def up
  	remove_column :messages, :receiver_id
  end

  def down
  	add_column :messages, :receiver_id, :integer                                                                                                                            
  end
end
