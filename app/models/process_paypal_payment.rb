class ProcessPaypalPayment < ApplicationRecord
    
    details = EXPRESS_GATEWAY.details_for(params[​:token​])
    express_purchase_options = {
        ​ip:​ request.remote_ip,
        ​token:​ params[​:token​],
        ​payer_id:​ details.payer_id,​
        currency:​​"USD"
        }​
    price = details.params[​"order_total"​].to_d * ​100
end