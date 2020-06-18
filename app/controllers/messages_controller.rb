class MessagesController < ApplicationController

    def index
        @booking = Booking.find(params[:booking_id])
        @messages = Message.where(booking: @booking)
        @message = Message.new
    end

    def create
        @booking = Booking.find(params[:booking_id])
        @conversation = Conversation.first
        @message = Message.new(message_params)
        @message.booking = @booking
        @message.conversation = @conversation
        @message.user = current_user
        if @message.save
            ConversationChannel.broadcast_to(
                @booking,
                render_to_string( partial: 'messages/message', locals: {message: @message})
            )
            redirect_to booking_messages_path(@booking, anchor: "message-#{@message.id}")
        else
            render "index"
        end
          
    end

    private

    def message_params
        params.require(:message).permit(:content)
    end
end
