class PaymentMethod < ApplicationRecord 
    
    payment_method = PaymentMethod.find_by(​code:​​"PEC"​)   
    Payment.create(
        ​order_id:​ order.id,
        ​payment_method_id:​ payment_method.id,​
        state:​​"processing"​,​total:​ order.total,​
        token:​ response.token  
    )
end