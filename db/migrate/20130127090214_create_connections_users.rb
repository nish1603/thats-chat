class CreateConnectionsUsers < ActiveRecord::Migration
  def change
    create_table :connections_users do |t|
      t.integer :user_id
      t.integer :connection_id

      t.timestamps
    end
  end
end
