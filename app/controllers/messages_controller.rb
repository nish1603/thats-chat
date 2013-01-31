class MessagesController < ApplicationController

  before_filter :load_connection

  def index
    @messages = @connection.messages  
  end

  def create
    @message = @connection.messages.build(params[:message])
    @message.sender = current_user

    respond_to do |format|
      if @message.save
        format.html
        format.js
      end
    end
  end

  private
    def load_connection
      @connection = Connection.where(:id => params[:connection_id]).first
    end
end