class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me

  has_many :sent_messages, :class_name => 'Message', :foreign_key => :sender_id
  has_and_belongs_to_many :connections
end