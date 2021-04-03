class Cart < ApplicationRecord

    product = params[​:cart​][​:product_id​]   
    quantity = params[​:cart​][​:quantity​]​   
    current_order.add_product(product, quantity)
end
