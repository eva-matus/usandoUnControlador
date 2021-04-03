class PayWithPaypal < ApplicationRecord
    
order = Order.find(params[​:cart​][​:order_id​])
​​#price must be in cents   

price = order.total * ​100​   
response = EXPRESS_GATEWAY.setup_purchase(
    price,
    ​ip:​ request.remote_ip,
    ​return_url:​ process_paypal_payment_cart_url,
    ​cancel_return_url:​ root_url,
    ​allow_guest_checkout:​​true​,
    currency:​​"USD"  
    )
end