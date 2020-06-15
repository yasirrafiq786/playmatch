class ConversationsController < ApplicationController

    def show
        @conversation = Conversation.find(params[:id])
    end

    def create
        @conversation = Conversation.create
        if @conversation.create
            redirect_to
        else
            flash[:alert] = "Unable to start conversation!!!"
        end
    end
end
