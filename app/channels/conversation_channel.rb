class ConversationChannel < ApplicationCable::Channel
  def subscribed
    conversation = Booking.find(params[:id])
    stream_for conversation
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
