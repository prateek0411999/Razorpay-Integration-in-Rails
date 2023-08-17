class WebhooksController < ActionController::API
   # skip_before_action :verify_authenticity_token
    
    def razorpay
        
        webhook_signature = request.headers['x-Razorpay-Signature']
        webhook_secret = ENV["RAZORPAY_WEBHOOK_SECRET"]
        webhook_body = request.raw_post

        signature_verification = Razorpay::Utility.verify_webhook_signature(webhook_body, webhook_signature,  webhook_secret)
        parsed_json  = JSON.parse(webhook_body)

        puts "!!!!!!!!!!!!!!!!!!!!!!"
        puts "!!!!!!!!!!!!!!!!!!!!!!"
        puts "!!!!!!!!!!!!!!!!!!!!!!"
        puts "!!!!!!!!!!!!!!!!!!!!!!"
        puts parsed_json
    end
end
