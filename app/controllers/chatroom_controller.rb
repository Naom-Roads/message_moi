class ChatroomController < ApplicationController



# def show


# end

def index

@messages = Message.all

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
