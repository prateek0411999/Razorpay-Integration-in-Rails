module AppServices
    
    class RazorpayApiService

        def create_order
            order = Razorpay::Order.create amount: 50000, currency: 'INR', receipt: 'TEST'
            return order
        end

        def fetch_order(order_id)
            order = Razorpay::Order.fetch(order_id)
            return order
        end
    end
end