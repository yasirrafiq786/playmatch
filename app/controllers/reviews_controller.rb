class ReviewsController < ApplicationController
    
    def index
        @reviews = Review.all
    end

    def new
        @booking = Booking.find(params[:booking_id])
        @review = Review.new
    end

    def create
        @review = Review.new(review_params)
        @booking = Booking.find(params[:booking_id])
        @review.booking = @booking
        @review.reviewer = current_user
        @booking.users.each do |user|
            if current_user != user
                @review.reviewee = user
            end
        end
        if @review.save
            redirect_to reviews_path
        else
            render :new
        end
    end

    

    private

    def review_params
        params.require(:review).permit(:content, :rating)
    end
end

