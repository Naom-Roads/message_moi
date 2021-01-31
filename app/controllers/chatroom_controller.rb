class ChatroomController < ApplicationController
before_action :require_user


# def show


# end

def index
@message = Message.new
@messages = Message.custom_display


end

# def new

# @message = Message.new

# end

# def create 

# @message = Message.create

# end



# private

# # Use callbacks to share common setup or constraints between actions.
# def set_message
#   @message = Message.find(params[:body])
# end

end
