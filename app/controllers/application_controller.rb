class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token
    
    def create_order
        order = AppServices::RazorpayApiService.new.create_order
        render json: {order_details: order}
    end

    def index
        @order = AppServices::RazorpayApiService.new.fetch_order("order_MREFW2PF4Vp3tv")
    end
end
