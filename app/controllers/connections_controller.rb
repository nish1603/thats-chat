class ConnectionsController < ApplicationController

  before_filter :authenticate_user!

  def index
    @connections = current_user.connections
  end

  def show
    @connection = Connection.includes(:messages).where(:id => params[:id]).first
  end

  def create
    respond_to do |format|
      if current_user.connections.create
        format.html
        format.js
      end
    end
  end

  def add_users
    @connection = Connection.where(:id => params[:id]).first
    @user = User.where(:email => params[:email]).first
    @connection.users << @user if @user

    respond_to do |format|
      format.html { redirect_to :back }
    end
  end
end